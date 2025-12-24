import 'package:ekofy_mobile/features/inbox/data/datasource/inbox_api_datasource.dart';
import 'package:ekofy_mobile/features/inbox/data/models/conversation_model.dart';
import 'package:ekofy_mobile/features/inbox/data/models/message_model.dart';
import 'package:ekofy_mobile/features/inbox/domain/repositories/inbox_repository.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

class InboxRepositoryImpl implements InboxRepository {
  final InboxApiDatasource apiDatasource;

  InboxRepositoryImpl(this.apiDatasource);

  @override
  Future<List<ConversationItem>> fetchConversations({
    String? userId,
    List<Enum$ConversationStatus>? statuses,
  }) async {
    try {
      Input$ConversationFilterInput? where;

      if (userId != null || (statuses != null && statuses.isNotEmpty)) {
        where = Input$ConversationFilterInput(
          userIds: userId != null
              ? Input$ListStringOperationFilterInput(
                  some: Input$StringOperationFilterInput(eq: userId),
                )
              : null,
          status: (statuses != null && statuses.isNotEmpty)
              ? Input$ConversationStatusOperationFilterInput($in: statuses)
              : null,
        );
      }

      final items = await apiDatasource.fetchConversations(where: where);
      return items.map((item) => ConversationItem.fromQueryItem(item)).toList();
    } catch (e) {
      throw Exception('Failed to fetch conversations: $e');
    }
  }

  @override
  Future<ConversationItem?> fetchConversationById(String conversationId) async {
    try {
      // Filter: const where: ConversationFilterInput = { id: { eq: conversationId } };
      final item = await apiDatasource.fetchConversationById(conversationId);
      return item != null ? ConversationItem.fromQueryItem(item) : null;
    } catch (e) {
      throw Exception('Failed to fetch conversation: $e');
    }
  }

  @override
  Future<MessagesResult> fetchMessages({
    required String conversationId,
    int last = 20,
    String? before,
  }) async {
    try {
      // Filter: const where: MessageFilterInput = { conversationId: { eq: conversationId } };
      final where = Input$MessageFilterInput(
        conversationId: Input$StringOperationFilterInput(eq: conversationId),
      );

      final edges = await apiDatasource.fetchMessages(
        where: where,
        last: last,
        before: before,
      );

      // Extract messages from edges
      final messages = edges
          .map((edge) => MessageItem.fromQueryNode(edge.node))
          .toList();

      // Get cursor from the first edge (oldest message) for next pagination
      final cursor = edges.isNotEmpty ? edges.first.cursor : null;

      return MessagesResult(messages: messages, cursor: cursor);
    } catch (e) {
      throw Exception('Failed to fetch messages: $e');
    }
  }
}
