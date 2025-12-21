import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_provider.dart';
import 'package:ekofy_mobile/features/inbox/presentation/providers/conversation_signalr_provider.dart';
import 'package:ekofy_mobile/features/inbox/presentation/widgets/chat_input.dart';
import 'package:ekofy_mobile/features/inbox/presentation/widgets/message_bubble.dart';
import 'package:ekofy_mobile/features/inbox/presentation/widgets/profile_info_sheet.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_package_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ConversationDetailScreen extends ConsumerStatefulWidget {
  final String conversationId;

  const ConversationDetailScreen({super.key, required this.conversationId});

  @override
  ConsumerState<ConversationDetailScreen> createState() =>
      _ConversationDetailScreenState();
}

class _ConversationDetailScreenState
    extends ConsumerState<ConversationDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _isSignalRConnected = false;
  ConversationSignalRNotifier? _signalRNotifier;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initSignalR();
      _loadMessages();
    });
  }

  Future<void> _initSignalR() async {
    try {
      final authLocal = ref.read(authLocalDatasourceProvider);
      final token = await authLocal.getAccessToken();

      if (token == null) {
        log('Access token not found');
        return;
      }

      // Create SignalR notifier
      _signalRNotifier = createConversationSignalRNotifier(token);

      // Set up event listeners
      _signalRNotifier!.onMessageReceived((message, senderProfile) {
        log('Received message: ${message.id} from ${senderProfile.nickname}');
        if (message.conversationId == widget.conversationId) {
          // Merge the separate senderProfile into the message
          final updatedMessage = message.copyWith(senderProfile: senderProfile);
          ref
              .read(inboxProvider.notifier)
              .addMessageToConversation(widget.conversationId, updatedMessage);
          // Auto-scroll to bottom when receiving a message
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToBottom(animate: true);
          });
        }
      });

      _signalRNotifier!.onMessageSent((message) {
        log('Message sent confirmation: ${message.id}');
        if (message.conversationId == widget.conversationId) {
          ref
              .read(inboxProvider.notifier)
              .addMessageToConversation(widget.conversationId, message);
          // Auto-scroll to bottom when sending a message
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToBottom(animate: true);
          });
        }
      });

      _signalRNotifier!.onMessageDeleted((data) {
        log('Message deleted: ${data.messageId}');
        ref
            .read(inboxProvider.notifier)
            .removeMessageFromConversation(
              widget.conversationId,
              data.messageId,
            );
      });

      _signalRNotifier!.onException((errorMessage) {
        log('SignalR error: $errorMessage');
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Error: $errorMessage')));
        }
      });

      // Start the connection
      await _signalRNotifier!.startConnection();
      log('SignalR chat connected');

      if (mounted) {
        setState(() {
          _isSignalRConnected = true;
        });
      }
    } catch (e, stackTrace) {
      log('SignalR connection error: $e');
      log(stackTrace.toString());
      if (mounted) {
        setState(() {
          _isSignalRConnected = false;
        });
      }
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels <=
            _scrollController.position.minScrollExtent + 100 &&
        !_isLoadingMore) {
      _loadMoreMessages();
    }
  }

  void _loadMessages() async {
    // Check if conversation exists in state, if not fetch it
    final inboxState = ref.read(inboxProvider);
    final conversationExists = inboxState.conversations.any(
      (c) => c.id == widget.conversationId,
    );

    if (!conversationExists) {
      await ref
          .read(inboxProvider.notifier)
          .fetchConversationById(widget.conversationId);
    }

    await ref
        .read(inboxProvider.notifier)
        .fetchMessages(widget.conversationId, last: 30);
    // Auto-scroll to bottom after initial load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom(animate: true);
    });

    log("First load");
  }

  Future<void> _loadMoreMessages() async {
    setState(() {
      _isLoadingMore = true;
    });

    await ref
        .read(inboxProvider.notifier)
        .fetchMessages(widget.conversationId, last: 30, loadMore: true);

    log("Load more messages");

    setState(() {
      _isLoadingMore = false;
    });
  }

  void _scrollToBottom({bool animate = true}) {
    if (_scrollController.hasClients) {
      if (animate) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      } else {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    }
  }

  Future<void> _sendMessage(String text) async {
    if (text.trim().isEmpty || !_isSignalRConnected) {
      log('Cannot send message: text empty or SignalR not connected');
      return;
    }

    try {
      final jwtPayload = ref.read(jwtPayloadProvider);
      final currentUserId = jwtPayload?['userId'] as String?;

      if (currentUserId == null) {
        log('Current user ID not found');
        return;
      }

      final inboxState = ref.read(inboxProvider);
      final conversation = inboxState.conversations[0];

      // Find the other user ID (not current user)
      final receiverId = conversation.userIds.firstWhere(
        (id) => id != currentUserId,
        orElse: () => '',
      );

      if (receiverId.isEmpty) {
        log('Receiver ID not found');
        return;
      }

      final authLocal = ref.read(authLocalDatasourceProvider);
      final token = await authLocal.getAccessToken();

      if (token == null) {
        log('Access token not found');
        return;
      }

      final messageRequest = ChatMessageRequest(
        conversationId: widget.conversationId,
        senderId: currentUserId,
        receiverId: receiverId,
        text: text.trim(),
      );

      if (_signalRNotifier == null) {
        log('SignalR notifier not initialized');
        return;
      }

      await _signalRNotifier!.sendMessage(messageRequest);
      log('Message sent via SignalR');
    } catch (e, stackTrace) {
      log('Error sending message: $e');
      log(stackTrace.toString());
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed to send message: $e')));
      }
    }
  }

  @override
  void dispose() {
    _signalRNotifier?.dispose();
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final inboxState = ref.watch(inboxProvider);
    final jwtPayload = ref.read(jwtPayloadProvider);
    final currentUserId = jwtPayload?['userId'] as String?;

    final messages = inboxState.getMessagesForConversation(
      widget.conversationId,
    );
    final conversationIndex = inboxState.conversations.indexWhere(
      (c) => c.id == widget.conversationId,
    );

    if (conversationIndex == -1) {
      if (inboxState.error != null) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
              ),
              onPressed: () => context.pop(),
            ),
          ),
          body: Center(child: Text('Error: ${inboxState.error}')),
        );
      }
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
            ),
            onPressed: () => context.pop(),
          ),
        ),
        body: Center(
          child: Image.asset(AppImages.loader, gaplessPlayback: true),
        ),
      );
    }

    final conversation = inboxState.conversations[conversationIndex];

    // Determine which profile to show
    final isOwner = conversation.ownerProfile.artistId != currentUserId;
    final otherProfile = isOwner
        ? conversation.otherProfile
        : conversation.ownerProfile;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
          ),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.violet.withOpacity(0.3),
              backgroundImage: otherProfile.avatar != null
                  ? NetworkImage(otherProfile.avatar!)
                  : null,
              child: otherProfile.avatar == null
                  ? Text(
                      otherProfile.nickname?.substring(0, 1).toUpperCase() ??
                          'U',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                otherProfile.nickname ?? 'Unknown User',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          if (conversation.status == Enum$ConversationStatus.PENDING)
            IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
              ),
              tooltip: 'Create Request',
              onPressed: () {
                if (otherProfile.artistId != null) {
                  _showCreateRequestModal(
                    context,
                    otherProfile.artistId!,
                    conversation.requestId,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This user is not an artist')),
                  );
                }
              },
            ),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: isDark ? AppColors.purpleIshWhite : AppColors.deepBlue,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => ProfileInfoSheet(
                  conversation: conversation,
                  otherProfile: otherProfile,
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Messages list
          Expanded(
            child: inboxState.isLoading && messages == null
                ? Center(
                    child: Image.asset(AppImages.loader, gaplessPlayback: true),
                  )
                : messages == null || messages.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 64,
                          color: AppColors.grey.withOpacity(0.5),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'No messages yet',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    itemCount: messages.length + (_isLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == 0 && _isLoadingMore) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Image.asset(
                              AppImages.loader,
                              gaplessPlayback: true,
                            ),
                          ),
                        );
                      }
                      final messageIndex = _isLoadingMore ? index - 1 : index;
                      final message = messages[messageIndex];
                      final isMe = message.senderId == currentUserId;

                      // Show date separator if needed
                      bool showDateSeparator = false;
                      if (messageIndex == 0) {
                        showDateSeparator = true;
                      } else {
                        final prevMessage = messages[messageIndex - 1];
                        final currentDate = DateTime(
                          message.sentAt.year,
                          message.sentAt.month,
                          message.sentAt.day,
                        );
                        final prevDate = DateTime(
                          prevMessage.sentAt.year,
                          prevMessage.sentAt.month,
                          prevMessage.sentAt.day,
                        );
                        showDateSeparator = !currentDate.isAtSameMomentAs(
                          prevDate,
                        );
                      }

                      return Column(
                        children: [
                          if (showDateSeparator)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                _formatDate(message.sentAt),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          MessageBubble(message: message, isMe: isMe),
                        ],
                      );
                    },
                  ),
          ),
          // Chat input
          ChatInput(
            controller: _messageController,
            onSend: (text) {
              _sendMessage(text);
              _messageController.clear();
            },
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (messageDate == today) {
      return 'Today';
    } else if (messageDate == yesterday) {
      return 'Yesterday';
    } else {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }

  void _showCreateRequestModal(
    BuildContext context,
    String artistId,
    String? publicRequestId,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _CreateRequestModal(
        artistId: artistId,
        publicRequestId: publicRequestId,
      ),
    );
  }
}

class _CreateRequestModal extends ConsumerStatefulWidget {
  final String artistId;
  final String? publicRequestId;

  const _CreateRequestModal({required this.artistId, this.publicRequestId});

  @override
  ConsumerState<_CreateRequestModal> createState() =>
      _CreateRequestModalState();
}

class _CreateRequestModalState extends ConsumerState<_CreateRequestModal> {
  bool _isLoading = true;
  List<Query$ArtistPackagesInConversation$artistPackagesInConversation$items>
  _packages = [];
  String? _selectedPackageId;

  @override
  void initState() {
    super.initState();
    _fetchPackages();
  }

  Future<void> _fetchPackages() async {
    try {
      final packages = await ref
          .read(artistApiDataSourceProvider)
          .fetchArtistPackagesInConversation(artistId: widget.artistId);
      if (mounted) {
        setState(() {
          _packages = packages;
          _isLoading = false;
        });
      }
    } catch (e) {
      log('Error fetching packages: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _sendRequest() async {
    if (_selectedPackageId == null) return;

    try {
      final success = await ref
          .read(requestProvider.notifier)
          .sendRequest(
            publicRequestId: widget.publicRequestId,
            artistId: widget.artistId,
            packageId: _selectedPackageId!,
            isDirectRequest: widget.publicRequestId == null,
          );

      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success ? 'Request sent successfully' : 'Failed to send request',
            ),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Select Package',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ),
          Expanded(
            child: _isLoading
                ? Center(
                    child: Image.asset(AppImages.loader, gaplessPlayback: true),
                  )
                : _packages.isEmpty
                ? const Center(child: Text('No packages found'))
                : ListView.builder(
                    itemCount: _packages.length,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      final package = _packages[index];
                      final isSelected = _selectedPackageId == package.id;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedPackageId = package.id;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.violet.withOpacity(0.1)
                                : (isDark
                                      ? const Color(0xFF1C1C1C)
                                      : Colors.grey[100]),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.violet
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      package.packageName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: isDark
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${Helper.formatCurrency(package.amount)} ${package.currency}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.violet,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                package.description ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: isDark
                                      ? Colors.white70
                                      : Colors.black54,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 16,
                                    color: isDark
                                        ? Colors.white54
                                        : Colors.black45,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${package.estimateDeliveryDays} days',
                                    style: TextStyle(
                                      color: isDark
                                          ? Colors.white54
                                          : Colors.black45,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Icon(
                                    Icons.refresh,
                                    size: 16,
                                    color: isDark
                                        ? Colors.white54
                                        : Colors.black45,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${package.maxRevision} revisions',
                                    style: TextStyle(
                                      color: isDark
                                          ? Colors.white54
                                          : Colors.black45,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _selectedPackageId == null ? null : _sendRequest,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.violet,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBackgroundColor: AppColors.violet.withOpacity(0.3),
                ),
                child: const Text(
                  'Send Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
