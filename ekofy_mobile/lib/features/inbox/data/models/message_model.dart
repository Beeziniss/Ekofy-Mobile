// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekofy_mobile/gql/queries/generated/conversation_query.graphql.dart';

class MessageItem {
  final String id;
  final String conversationId;
  final String senderId;
  final String receiverId;
  final bool isRead;
  final String text;
  final DateTime sentAt;
  final List<String> deletedForIds;
  final MessageSenderProfile senderProfile;

  MessageItem({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.receiverId,
    required this.isRead,
    required this.text,
    required this.sentAt,
    required this.deletedForIds,
    required this.senderProfile,
  });

  factory MessageItem.fromQueryNode(Query$Messages$messages$edges$node node) {
    return MessageItem(
      id: node.id,
      conversationId: node.conversationId,
      senderId: node.senderId,
      receiverId: node.receiverId,
      isRead: node.isRead,
      text: node.text,
      sentAt: node.sentAt,
      deletedForIds: node.deletedForIds,
      senderProfile: MessageSenderProfile.fromQueryItem(
        node.senderProfileMessages,
      ),
    );
  }
}

class MessageSenderProfile {
  final String? avatar;
  final String? nickname;

  MessageSenderProfile({this.avatar, this.nickname});

  factory MessageSenderProfile.fromQueryItem(
    Query$Messages$messages$edges$node$senderProfileMessages item,
  ) {
    return MessageSenderProfile(avatar: item.avatar, nickname: item.nickname);
  }
}
