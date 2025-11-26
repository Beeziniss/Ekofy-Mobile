import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';

// Provider to decode JWT on init
final decodeJwtOnInitProvider = FutureProvider((ref) async {
  return await Helper.decodeJwtUnverified(ref);
});

// GraphQL Query for fetching tracks and artists
final homeQueryProvider = Provider((ref) {
  return gql('''
    query CombinedQuery() {
      tracks(take: 10) {
        items {
          id
          name
          mainArtistIds
          coverImage
        }
      }
      artists {
        items {
          id
          stageName
        }
      }
    }
  ''');
});

// Provider for tracks data with artist names
final tracksWithArtistsProvider =
    FutureProvider.autoDispose<List<Map<String, dynamic>>>((ref) async {
      // This will be populated by the Query widget
      // For now, returning empty list
      return [];
    });

// Provider for home screen query options
final homeQueryOptionsProvider = Provider((ref) {
  return QueryOptions(
    document: ref.watch(homeQueryProvider),
    variables: const {'take': 10},
  );
});
