import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Streaming API service for managing audio streaming tokens and URLs
class StreamingApi {
  final Dio _dio;

  // Token cache for each track
  final Map<String, String> _tokenCache = {};

  // Track ongoing refresh promises to prevent multiple simultaneous refreshes
  final Map<String, Future<String>> _refreshPromiseCache = {};

  // Track last refresh attempt timestamp to prevent rapid retries
  final Map<String, DateTime> _lastRefreshAttempt = {};

  static const Duration _refreshCooldown = Duration(seconds: 5);

  StreamingApi({required Dio dio}) : _dio = dio;

  /// Sign token for a specific track ID
  Future<String> signToken(String trackId) async {
    try {
      final response = await _dio.post(
        '/api/media-streaming/signed-token',
        data: '"$trackId"', // Send as JSON string with quotes
        options: Options(
          headers: {'Content-Type': 'application/json'},
          contentType: 'application/json',
        ),
      );

      final token = response.data['token'] as String;
      // Cache the token for this track
      _tokenCache[trackId] = token;
      return token;
    } on DioException catch (e) {
      print('Sign token error: ${e}');
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  /// Refresh an existing signed token when the old one is expired (with memoization)
  Future<String> refreshSignToken({
    required String trackId,
    required String oldToken,
  }) async {
    // Check if there's already an ongoing refresh for this track
    final existingRefreshPromise = _refreshPromiseCache[trackId];
    if (existingRefreshPromise != null) {
      print('Reusing existing refresh promise for track $trackId');
      return existingRefreshPromise;
    }

    // Check cooldown period to prevent rapid retries
    final lastAttempt = _lastRefreshAttempt[trackId];
    final now = DateTime.now();
    if (lastAttempt != null && now.difference(lastAttempt) < _refreshCooldown) {
      print('Refresh cooldown active for track $trackId. Waiting...');
      throw Exception(
        'Refresh cooldown active for track $trackId. Please wait before retrying.',
      );
    }

    // Create and cache the refresh promise
    final refreshFuture = _performTokenRefresh(trackId, oldToken, now);
    _refreshPromiseCache[trackId] = refreshFuture;

    try {
      final result = await refreshFuture;
      return result;
    } finally {
      // Remove the promise from cache when done (success or failure)
      _refreshPromiseCache.remove(trackId);
    }
  }

  Future<String> _performTokenRefresh(
    String trackId,
    String oldToken,
    DateTime now,
  ) async {
    try {
      _lastRefreshAttempt[trackId] = now;
      print('Starting token refresh for track $trackId');

      final response = await _dio.post(
        '/api/media-streaming/refresh-signed-url',
        options: Options(headers: {'Content-Type': 'application/json'}),
        queryParameters: {'trackId': trackId, 'oldToken': oldToken},
      );

      final newToken = response.data['token'] as String?;
      if (newToken == null || newToken.isEmpty) {
        throw Exception('Received empty token from refresh API');
      }

      // Update the cached token
      _tokenCache[trackId] = newToken;
      print('Token refresh successful for track $trackId');
      return newToken;
    } on DioException catch (e) {
      print('Token refresh failed for track $trackId: $e');

      // If refresh fails due to invalid old token, clear the cache
      if (e.response?.statusCode == 401) {
        print('Old token was invalid, clearing cache for track $trackId');
        _tokenCache.remove(trackId);
      }

      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  /// Generate streaming URL with token
  String getStreamingUrl(String trackId, String token) {
    final baseUrl = dotenv.env['BACKEND_URL'] ?? '';
    return '$baseUrl/api/media-streaming/cloudfront/$trackId/master.m3u8?token=$token';
  }

  /// Get cached token for a track
  String? getCachedToken(String trackId) {
    return _tokenCache[trackId];
  }

  /// Clear cached token for a track and cleanup all related caches
  void clearCachedToken(String trackId) {
    _tokenCache.remove(trackId);
    _refreshPromiseCache.remove(trackId);
    _lastRefreshAttempt.remove(trackId);
  }

  /// Force refresh token and get new streaming URL (with memoization)
  Future<String> forceRefreshStreamingUrl(String trackId) async {
    // Check if there's already an ongoing refresh for this track
    final existingRefreshPromise = _refreshPromiseCache[trackId];
    if (existingRefreshPromise != null) {
      print('Waiting for existing refresh to complete for track $trackId');
      try {
        final newToken = await existingRefreshPromise;
        return getStreamingUrl(trackId, newToken);
      } catch (e) {
        // If the existing refresh failed, continue with force refresh
        print(
          'Existing refresh failed, proceeding with force refresh for track $trackId',
        );
      }
    }

    try {
      // Clear any existing cached data
      clearCachedToken(trackId);

      // Get a completely new token
      final newToken = await signToken(trackId);
      return getStreamingUrl(trackId, newToken);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  /// Validate token and get streaming URL with automatic retry on 401
  Future<String> getSignedStreamingUrl(String trackId) async {
    try {
      // Try to get cached token first, if not available, sign a new one
      String? token = _tokenCache[trackId];
      if (token == null) {
        token = await signToken(trackId);
      }

      // Ensure token is defined before using it
      if (token.isEmpty) {
        throw Exception('Failed to obtain streaming token');
      }

      return getStreamingUrl(trackId, token);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    }
  }

  /// Retry streaming URL with token refresh on 401 error
  Future<String> getSignedStreamingUrlWithRetry(String trackId) async {
    try {
      return await getSignedStreamingUrl(trackId);
    } catch (error) {
      print('Initial streaming URL request failed: $error');

      // Always try to refresh token if there's an error and we have an old token
      final oldToken = _tokenCache[trackId];
      if (oldToken != null) {
        try {
          print('Attempting to refresh token for trackId: $trackId');
          final newToken = await refreshSignToken(
            trackId: trackId,
            oldToken: oldToken,
          );
          return getStreamingUrl(trackId, newToken);
        } catch (refreshError) {
          print('Token refresh failed: $refreshError');
          // If refresh fails, clear cached token and try with a new token
          _tokenCache.remove(trackId);
          final newToken = await signToken(trackId);
          return getStreamingUrl(trackId, newToken);
        }
      } else {
        // No cached token, sign a new one
        final newToken = await signToken(trackId);
        return getStreamingUrl(trackId, newToken);
      }
    }
  }

  /// Clear all cached data
  void clearAllCache() {
    _tokenCache.clear();
    _refreshPromiseCache.clear();
    _lastRefreshAttempt.clear();
  }
}
