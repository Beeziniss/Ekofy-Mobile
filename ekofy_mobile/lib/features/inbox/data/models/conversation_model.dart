// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/conversation_query.graphql.dart';

class ConversationItem {
  final String id;
  final List<String> userIds;
  final String? requestId;
  final Enum$ConversationStatus status;
  final ConversationProfile ownerProfile;
  final ConversationProfile otherProfile;
  final LastMessage? lastMessage;

  ConversationItem({
    required this.id,
    required this.userIds,
    this.requestId,
    required this.status,
    required this.ownerProfile,
    required this.otherProfile,
    this.lastMessage,
  });

  factory ConversationItem.fromQueryItem(
    Query$Conversations$conversations$items item,
  ) {
    return ConversationItem(
      id: item.id,
      userIds: item.userIds,
      requestId: item.requestId,
      status: item.status,
      ownerProfile: ConversationProfile.fromQueryItem(
        item.ownerProfileConversation,
      ),
      otherProfile: ConversationProfile.fromQueryItem(
        item.otherProfileConversation,
      ),
      lastMessage: item.lastMessage != null
          ? LastMessage.fromQueryItem(item.lastMessage!)
          : null,
    );
  }
}

class ConversationProfile {
  final String? avatar;
  final String? nickname;
  final String? artistId;

  ConversationProfile({this.avatar, this.nickname, this.artistId});

  factory ConversationProfile.fromQueryItem(dynamic item) {
    return ConversationProfile(
      avatar: item.avatar,
      nickname: item.nickname,
      artistId: item.artistId,
    );
  }
}

class LastMessage {
  final String? text;
  final String? senderId;
  final DateTime? sentAt;
  final List<String>? isReadBy;

  LastMessage({this.text, this.senderId, this.sentAt, this.isReadBy});

  factory LastMessage.fromQueryItem(
    Query$Conversations$conversations$items$lastMessage item,
  ) {
    return LastMessage(
      text: item.text,
      senderId: item.senderId,
      sentAt: item.sentAt,
      isReadBy: item.isReadBy,
    );
  }
}
