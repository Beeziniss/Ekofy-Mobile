import 'dart:developer';

import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/notification/presentation/providers/notification_provider.dart';
import 'package:ekofy_mobile/gql/queries/generated/notification_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:signalr_netcore/signalr_client.dart';

class NotificationScreen extends ConsumerStatefulWidget {
  const NotificationScreen({super.key});

  @override
  ConsumerState<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
  late HubConnection hubConnection;
  bool _isSignalRConnected = false;

  @override
  void initState() {
    super.initState();
    _initSignalR();
  }

  Future<void> _initSignalR() async {
    final baseUrl = dotenv.env['BACKEND_URL'];
    if (baseUrl == null) {
      log('BACKEND_URL not found in .env');
      return;
    }

    var authLocal = ref.read(authLocalDatasourceProvider);
    final token = await authLocal.getAccessToken();

    // Assuming the hub endpoint is /notificationHub, adjust if needed
    final hubUrl = '$baseUrl/hub/notification';

    hubConnection = HubConnectionBuilder()
        .withUrl(
          hubUrl,
          options: HttpConnectionOptions(accessTokenFactory: () => Future.value(token)),
        )
        .withAutomaticReconnect()
        .build();

    hubConnection.on('ReceiveNotification', (arguments) {
      log('Received notification: $arguments');
      // You can trigger a refetch here if you have access to the refetch function
      // or invalidate the provider to force a refresh
      // ref.refresh(notificationQueryOptionsProvider(userId)); // This might be tricky without userId here
    });

    try {
      await hubConnection.start();
      log('SignalR Connected to $hubUrl');
    } catch (e) {
      log('SignalR Connection Error: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isSignalRConnected = true;
        });
      }
    }
  }

  @override
  void dispose() {
    hubConnection.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isSignalRConnected) {
      return const Center(child: CircularProgressIndicator());
    }

    // final payload = await Helper.decodeJwtUnverified(ref);
    final String userId =
        '68e3e7282b6b7f4061c07123'; //payload?['userId'] as String?;

    // if (userId == null) {
    //   return const Scaffold(
    //     body: Center(child: Text('User not found')),
    //   );
    // }

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Query(
        options: ref.read(notificationQueryOptionsProvider(userId)),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (result.hasException) {
            return Center(
              child: Text(
                result.exception.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          final data = result.data;
          if (data == null) {
            return const Center(
              child: Text(
                'No notifications',
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          final notificationsData = Query$notificationsForUserQuery.fromJson(
            data,
          );
          final notifications =
              notificationsData.notificationsForUser?.nodes ?? [];

          if (notifications.isEmpty) {
            return const Center(
              child: Text(
                'No notifications',
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: notifications.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final notification = notifications[index];
              return _buildNotificationItem(notification);
            },
          );
        },
      ),
    );
  }

  Future<void> _markAsRead(String notificationId) async {
    if (hubConnection.state == HubConnectionState.Connected) {
      log('Marking notification as read: $notificationId');
      try {
        final result = await hubConnection.invoke(
          'MarkNotificationAsRead',
          args: [notificationId],
        );
        log('Server responded: $result');
      } catch (e, stack) {
        log('Error marking notification as read: $e');
        log(stack.toString());
      }
    } else {
      log('SignalR is not connected!');
    }
  }

  Widget _buildNotificationItem(
    Query$notificationsForUserQuery$notificationsForUser$nodes notification,
  ) {
    return GestureDetector(
      onTap: () {
        log("Tapped notification ${notification.id}");
        _markAsRead(notification.id);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: notification.isRead
              ? AppColors.secondaryBackground
              : AppColors.deepBlue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: notification.isRead ? Colors.transparent : AppColors.violet,
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.violet.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications,
                color: AppColors.violet,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.content,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatDate(notification.createdAt),
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
            ),
            if (!notification.isRead)
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.violet,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return DateFormat('MMM d, yyyy').format(date);
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}
