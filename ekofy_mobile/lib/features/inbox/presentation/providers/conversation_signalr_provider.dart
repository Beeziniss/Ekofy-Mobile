import 'dart:developer';
import 'package:ekofy_mobile/features/inbox/data/models/message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:signalr_netcore/signalr_client.dart';

class ChatMessageRequest {
  final String conversationId;
  final String senderId;
  final String receiverId;
  final String text;

  ChatMessageRequest({
    required this.conversationId,
    required this.senderId,
    required this.receiverId,
    required this.text,
  });

  Map<String, dynamic> toJson() => {
    'ConversationId': conversationId,
    'SenderId': senderId,
    'ReceiverId': receiverId,
    'Text': text,
  };
}

class MessageDeletedData {
  final String messageId;
  final String deletedBy;

  MessageDeletedData({required this.messageId, required this.deletedBy});

  factory MessageDeletedData.fromJson(Map<String, dynamic> json) {
    return MessageDeletedData(
      messageId: json['messageId'] as String,
      deletedBy: json['deletedBy'] as String,
    );
  }
}

class ConversationSignalRNotifier extends ChangeNotifier {
  HubConnection? _connection;
  bool _isConnected = false;
  String? _error;
  final String accessToken;

  Function(MessageItem, MessageSenderProfile)? _onMessageReceived;
  Function(MessageItem)? _onMessageSent;
  Function(MessageDeletedData)? _onMessageDeleted;
  Function(String)? _onException;

  ConversationSignalRNotifier(this.accessToken);

  HubConnection? get connection => _connection;
  bool get isConnected => _isConnected;
  String? get error => _error;

  Future<void> startConnection() async {
    if (_connection?.state == HubConnectionState.Connected) {
      log('SignalR chat already connected');
      return;
    }

    try {
      final baseUrl = dotenv.env['BACKEND_URL'];
      if (baseUrl == null) {
        throw Exception('BACKEND_URL not found in .env');
      }

      final hubUrl = '$baseUrl/hub/chat';

      final newConnection = HubConnectionBuilder()
          .withUrl(
            hubUrl,
            options: HttpConnectionOptions(
              accessTokenFactory: () => Future.value(accessToken),
            ),
          )
          .withAutomaticReconnect()
          .build();

      // Set up connection state handlers
      newConnection.onclose(({error}) {
        log('SignalR chat connection closed: $error');
        _isConnected = false;
        notifyListeners();
      });

      newConnection.onreconnecting(({error}) {
        log('SignalR chat reconnecting: $error');
        _isConnected = false;
        notifyListeners();
      });

      newConnection.onreconnected(({connectionId}) {
        log('SignalR chat reconnected: $connectionId');
        _isConnected = true;
        notifyListeners();
      });

      // Set up event listeners
      newConnection.on('ReceiveMessage', _handleReceiveMessage);
      newConnection.on('MessageSent', _handleMessageSent);
      newConnection.on('MessageDeleted', _handleMessageDeleted);
      newConnection.on('ReceiveException', _handleException);

      await newConnection.start();
      log('SignalR chat connected successfully to $hubUrl');

      _connection = newConnection;
      _isConnected = true;
      _error = null;
      notifyListeners();
    } catch (e, stackTrace) {
      log('Error starting SignalR chat connection: $e');
      log(stackTrace.toString());
      _isConnected = false;
      _error = e.toString();
      notifyListeners();
      rethrow;
    }
  }

  Future<void> stopConnection() async {
    if (_connection != null) {
      try {
        await _connection!.stop();
        log('SignalR chat connection stopped');
        _connection = null;
        _isConnected = false;
        _error = null;
        notifyListeners();
      } catch (e) {
        log('Error stopping SignalR chat connection: $e');
      }
    }
  }

  Future<void> sendMessage(ChatMessageRequest messageRequest) async {
    if (_connection?.state != HubConnectionState.Connected) {
      final errorMsg = 'SignalR connection not available';
      _error = errorMsg;
      notifyListeners();
      throw Exception(errorMsg);
    }

    try {
      await _connection!.invoke('SendMessage', args: [messageRequest.toJson()]);
      log('Message sent successfully');
    } catch (e, stackTrace) {
      log('Error sending message: $e');
      log(stackTrace.toString());
      _error = e.toString();
      notifyListeners();
      rethrow;
    }
  }

  void _handleReceiveMessage(List<Object?>? arguments) {
    if (arguments == null || arguments.length < 2) return;

    try {
      final messageData = arguments[0] as Map<String, dynamic>;
      final senderProfileData = arguments[1] as Map<String, dynamic>;

      final message = _parseMessageFromSignalR(messageData);
      final senderProfile = MessageSenderProfile(
        avatar: senderProfileData['avatar'] as String?,
        nickname: senderProfileData['nickname'] as String?,
      );

      log('Message received: ${message.id} from ${senderProfile.nickname}');
      _onMessageReceived?.call(message, senderProfile);
    } catch (e) {
      log('Error handling received message: $e');
    }
  }

  void _handleMessageSent(List<Object?>? arguments) {
    if (arguments == null || arguments.isEmpty) return;

    try {
      final messageData = arguments[0] as Map<String, dynamic>;
      final message = _parseMessageFromSignalR(messageData);
      log('Message sent confirmation: ${message.id}');
      _onMessageSent?.call(message);
    } catch (e) {
      log('Error handling sent message: $e');
    }
  }

  void _handleMessageDeleted(List<Object?>? arguments) {
    if (arguments == null || arguments.isEmpty) return;

    try {
      final data = arguments[0] as Map<String, dynamic>;
      final deletedData = MessageDeletedData.fromJson(data);
      log('Message deleted: ${deletedData.messageId}');
      _onMessageDeleted?.call(deletedData);
    } catch (e) {
      log('Error handling deleted message: $e');
    }
  }

  void _handleException(List<Object?>? arguments) {
    if (arguments == null || arguments.isEmpty) return;

    try {
      final errorMessage = arguments[0] as String;
      log('SignalR chat error: $errorMessage');
      _error = errorMessage;
      notifyListeners();
      _onException?.call(errorMessage);
    } catch (e) {
      log('Error handling exception: $e');
    }
  }

  MessageItem _parseMessageFromSignalR(Map<String, dynamic> data) {
    return MessageItem(
      id: data['id'] as String,
      conversationId: data['conversationId'] as String,
      senderId: data['senderId'] as String,
      receiverId: data['receiverId'] as String,
      isRead: data['isRead'] as bool? ?? false,
      text: data['text'] as String,
      sentAt: DateTime.parse(data['sentAt'] as String),
      deletedForIds:
          (data['deletedForIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      senderProfile: MessageSenderProfile(
        avatar: data['senderProfile']?['avatar'] as String?,
        nickname: data['senderProfile']?['nickname'] as String?,
      ),
    );
  }

  // Event callback setters
  void onMessageReceived(Function(MessageItem, MessageSenderProfile) callback) {
    _onMessageReceived = callback;
  }

  void onMessageSent(Function(MessageItem) callback) {
    _onMessageSent = callback;
  }

  void onMessageDeleted(Function(MessageDeletedData) callback) {
    _onMessageDeleted = callback;
  }

  void onException(Function(String) callback) {
    _onException = callback;
  }

  @override
  void dispose() {
    stopConnection();
    super.dispose();
  }
}

// Provider factory for conversation SignalR
ConversationSignalRNotifier createConversationSignalRNotifier(
  String accessToken,
) {
  return ConversationSignalRNotifier(accessToken);
}
