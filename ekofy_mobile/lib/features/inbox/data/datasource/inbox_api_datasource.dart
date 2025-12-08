import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/conversation_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class InboxApiDatasource {
  final GraphQLClient client;

  InboxApiDatasource(this.client);

  /// Fetch conversations with optional filters
  Future<List<Query$Conversations$conversations$items>> fetchConversations({
    Input$ConversationFilterInput? where,
  }) async {
    try {
      final variables = Variables$Query$Conversations(where: where);
      final options = Options$Query$Conversations(
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query$Conversations(options);

      if (result.hasException) {
        throw Exception('Failed to fetch conversations: ${result.exception}');
      }

      return result.parsedData?.conversations?.items ?? [];
    } catch (e) {
      throw Exception('Failed to fetch conversations: $e');
    }
  }

  /// Fetch messages for a specific conversation
  Future<List<Query$Messages$messages$edges>> fetchMessages({
    required Input$MessageFilterInput where,
    int last = 20,
    String? before,
  }) async {
    try {
      final variables = Variables$Query$Messages(
        where: where,
        last: last,
        before: before,
      );
      final options = Options$Query$Messages(
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query$Messages(options);

      if (result.hasException) {
        throw Exception('Failed to fetch messages: ${result.exception}');
      }

      return result.parsedData?.messages?.edges ?? [];
    } catch (e) {
      throw Exception('Failed to fetch messages: $e');
    }
  }

  /// Fetch a single conversation by ID
  Future<Query$Conversations$conversations$items?> fetchConversationById(
    String conversationId,
  ) async {
    try {
      final where = Input$ConversationFilterInput(
        id: Input$StringOperationFilterInput(eq: conversationId),
      );

      final conversations = await fetchConversations(where: where);
      return conversations.isNotEmpty ? conversations.first : null;
    } catch (e) {
      throw Exception('Failed to fetch conversation: $e');
    }
  }
}
