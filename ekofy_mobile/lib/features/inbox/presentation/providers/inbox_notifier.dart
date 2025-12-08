import 'dart:developer';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/inbox/data/models/message_model.dart';
import 'package:ekofy_mobile/features/inbox/domain/repositories/inbox_repository.dart';
import 'package:ekofy_mobile/features/inbox/presentation/providers/inbox_state.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class InboxNotifier extends StateNotifier<InboxState> {
  final InboxRepository repository;
  final Ref ref;

  InboxNotifier(this.repository, this.ref) : super(InboxState());

  /// Fetch conversations for the current user with optional status filter
  Future<void> fetchConversations({Enum$ConversationStatus? status}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final jwtPayload = await Helper.decodeJwtUnverified(ref);
      final userId = jwtPayload?['userId'] as String?;

      if (userId == null) {
        throw Exception('User ID not found');
      }

      final conversations = await repository.fetchConversations(
        userId: userId,
        status: status,
      );
      state = state.copyWith(conversations: conversations, isLoading: false);
    } catch (e) {
      log('Inbox fetch conversations error: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Fetch messages for a specific conversation
  Future<void> fetchMessages(
    String conversationId, {
    int last = 30,
    bool loadMore = false,
  }) async {
    if (!loadMore) {
      state = state.copyWith(isLoading: true, error: null);
    }
    try {
      // Get cursor from state if loading more
      final before = loadMore ? state.cursors[conversationId] : null;

      final result = await repository.fetchMessages(
        conversationId: conversationId,
        last: last,
        before: before,
      );

      final updatedCache = Map<String, List<MessageItem>>.from(
        state.messagesCache,
      );
      final updatedCursors = Map<String, String?>.from(state.cursors);

      if (loadMore && updatedCache.containsKey(conversationId)) {
        // Prepend older messages
        final existingMessages = updatedCache[conversationId]!;
        final newMessages = result.messages
            .where(
              (msg) =>
                  !existingMessages.any((existing) => existing.id == msg.id),
            )
            .toList();
        updatedCache[conversationId] = [...newMessages, ...existingMessages];
      } else {
        // First load
        updatedCache[conversationId] = result.messages;
      }

      // Store the cursor from the result for next load more
      updatedCursors[conversationId] = result.cursor;

      state = state.copyWith(
        messagesCache: updatedCache,
        cursors: updatedCursors,
        selectedConversationId: conversationId,
        isLoading: false,
      );
    } catch (e) {
      log('Inbox fetch messages error: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Select a conversation
  void selectConversation(String conversationId) {
    state = state.copyWith(selectedConversationId: conversationId);
  }

  /// Clear selected conversation
  void clearSelection() {
    state = state.copyWith(selectedConversationId: null);
  }

  /// Refresh conversations
  Future<void> refreshConversations() async {
    await fetchConversations();
  }
}
