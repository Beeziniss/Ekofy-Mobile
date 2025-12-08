import 'package:ekofy_mobile/features/inbox/data/models/conversation_model.dart';
import 'package:ekofy_mobile/features/inbox/data/models/message_model.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

class MessagesResult {
  final List<MessageItem> messages;
  final String? cursor; // Cursor of the first (oldest) message for pagination

  MessagesResult({required this.messages, this.cursor});
}

abstract class InboxRepository {
  Future<List<ConversationItem>> fetchConversations({
    String? userId,
    Enum$ConversationStatus? status,
  });

  Future<ConversationItem?> fetchConversationById(String conversationId);

  Future<MessagesResult> fetchMessages({
    required String conversationId,
    int last = 20,
    String? before,
  });
}
