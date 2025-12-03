// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';

import 'request_status.dart';

class PublicRequestItem {
  final String id;
  final String title;
  final String titleUnsigned;
  final String detailDescription;
  final String type;
  final String summary;
  final String requestUserId;
  final DateTime postCreatedTime;
  final int duration;
  final DateTime createdAt;
  final Budget budget;
  final Enum$CurrencyType currency;
  final bool free;
  final RequestStatus status;
  final Requestor requestor;

  double get amount => budget.min;

  PublicRequestItem({
    required this.id,
    required this.title,
    required this.titleUnsigned,
    required this.summary,
    required this.requestUserId,
    required this.postCreatedTime,
    required this.duration,
    required this.detailDescription,
    required this.type,
    required this.createdAt,
    required this.budget,
    required this.currency,
    required this.free,
    required this.status,
    required this.requestor,
  });

  factory PublicRequestItem.fromQueryItem(
    Query$PublicRequestQuery$requests$items item,
  ) {
    final req = item.requestor.isNotEmpty ? item.requestor.first : null;
    return PublicRequestItem(
      id: item.id,
      title: item.title ?? '',
      titleUnsigned: item.titleUnsigned ?? '',
      summary: item.summary ?? '',
      requestUserId: item.requestUserId,
      postCreatedTime: item.postCreatedTime ?? DateTime.now(),
      duration: item.duration,
      detailDescription: item.detailDescription ?? '',
      type: 'PUBLIC REQUEST',
      createdAt: item.postCreatedTime ?? DateTime.now(),
      budget: Budget(
        min: item.budget?.min ?? 0.0,
        max: item.budget?.max ?? 0.0,
      ),
      currency: item.currency,
      free: (item.budget?.min ?? 0) == 0,
      status: RequestStatus.fromString(item.status.name),
      requestor: Requestor(
        displayName: req?.displayName ?? '',
        avatarImage: req?.avatarImage ?? '',
        userId: req?.userId ?? '',
      ),
    );
  }
}

class Budget {
  final double min;
  final double max;

  Budget({required this.min, required this.max});
}

class Requestor {
  String displayName;
  String? avatarImage;
  String userId;

  Requestor({
    required this.displayName,
    required this.avatarImage,
    required this.userId,
  });
}
