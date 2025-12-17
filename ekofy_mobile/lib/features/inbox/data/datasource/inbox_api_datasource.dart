import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/conversation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/conversation_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class InboxApiDatasource {
  final GraphQLClient client;

  InboxApiDatasource(this.client);

  /// Add a general conversation with a user
  Future<String?> addConversationGeneral(String userId) async {
    try {
      final variables = Variables$Mutation$AddConversationGeneral(
        userId: userId,
      );
      final options = Options$Mutation$AddConversationGeneral(
        variables: variables,
      );

      final result = await client.mutate$AddConversationGeneral(options);

      if (result.hasException) {
        throw Exception('Failed to add conversation: ${result.exception}');
      }

      return result.parsedData?.addConversationGeneral;
    } catch (e) {
      throw Exception('Failed to add conversation: $e');
    }
  }

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
