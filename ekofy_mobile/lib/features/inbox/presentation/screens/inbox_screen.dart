import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/inbox/presentation/widgets/conversation_card.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InboxScreen extends ConsumerStatefulWidget {
  const InboxScreen({super.key});

  @override
  ConsumerState<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends ConsumerState<InboxScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  Enum$ConversationStatus? _selectedStatus = Enum$ConversationStatus.NONE;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController?.addListener(_onTabChanged);

    // Load conversations on init
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadConversations();
    });
  }

  void _onTabChanged() {
    if (!_tabController!.indexIsChanging) {
      setState(() {
        switch (_tabController!.index) {
          case 0:
            _selectedStatus =
                Enum$ConversationStatus.NONE; // General - all conversations
            break;
          case 1:
            _selectedStatus = Enum$ConversationStatus.IN_PROGRESS;
            break;
          case 2:
            _selectedStatus = Enum$ConversationStatus.COMPLETED;
            break;
        }
      });
      _loadConversations();
    }
  }

  void _loadConversations() {
    log('Loading conversations with status: $_selectedStatus');
    ref
        .read(inboxProvider.notifier)
        .fetchConversations(status: _selectedStatus);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inboxState = ref.watch(inboxProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.chat_bubble_outline,
            color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
          ),
        ),
        title: Text(
          'Conversation',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
            ),
            onPressed: () {
              // TODO: Implement search
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: isDark ? AppColors.violet : AppColors.deepBlue,
          labelColor: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
          unselectedLabelColor: AppColors.grey,
          labelStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          tabs: [
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('General'),
                  if (_selectedStatus == null &&
                      inboxState.conversations.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${inboxState.conversations.length}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Working'),
                  if (_selectedStatus == Enum$ConversationStatus.IN_PROGRESS &&
                      inboxState.conversations.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.violet,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${inboxState.conversations.length}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Tab(text: 'Archived'),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _loadConversations();
        },
        child: inboxState.isLoading
            ? Center(
                child: Image.asset(AppImages.loader, gaplessPlayback: true),
              )
            : inboxState.error != null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: AppColors.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading conversations',
                      style: TextStyle(
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: _loadConversations,
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              )
            : TabBarView(
                controller: _tabController,
                children: [
                  _buildConversationList(inboxState, isDark),
                  _buildConversationList(inboxState, isDark),
                  _buildConversationList(inboxState, isDark),
                ],
              ),
      ),
    );
  }

  Widget _buildConversationList(inboxState, bool isDark) {
    if (inboxState.conversations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 64,
              color: AppColors.grey.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              _selectedStatus == Enum$ConversationStatus.IN_PROGRESS
                  ? 'Active ongoing conversations'
                  : 'No messages yet',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: inboxState.conversations.length,
      itemBuilder: (context, index) {
        final conversation = inboxState.conversations[index];
        return ConversationCard(
          conversation: conversation,
          onTap: () {
            context.push('/inbox/${conversation.id}');
          },
        );
      },
    );
  }
}
