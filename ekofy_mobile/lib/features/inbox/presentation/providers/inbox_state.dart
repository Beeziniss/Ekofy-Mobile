import 'package:ekofy_mobile/features/inbox/data/models/conversation_model.dart';
import 'package:ekofy_mobile/features/inbox/data/models/message_model.dart';

class InboxState {
  final List<ConversationItem> conversations;
  final Map<String, List<MessageItem>> messagesCache;
  final Map<String, String?> cursors; // Store cursor for each conversation
  final bool isLoading;
  final String? error;
  final String? selectedConversationId;

  InboxState({
    this.conversations = const [],
    this.messagesCache = const {},
    this.cursors = const {},
    this.isLoading = false,
    this.error,
    this.selectedConversationId,
  });

  InboxState copyWith({
    List<ConversationItem>? conversations,
    Map<String, List<MessageItem>>? messagesCache,
    Map<String, String?>? cursors,
    bool? isLoading,
    String? error,
    String? selectedConversationId,
  }) {
    return InboxState(
      conversations: conversations ?? this.conversations,
      messagesCache: messagesCache ?? this.messagesCache,
      cursors: cursors ?? this.cursors,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      selectedConversationId:
          selectedConversationId ?? this.selectedConversationId,
    );
  }

  List<MessageItem>? getMessagesForConversation(String conversationId) {
    return messagesCache[conversationId];
  }
}
