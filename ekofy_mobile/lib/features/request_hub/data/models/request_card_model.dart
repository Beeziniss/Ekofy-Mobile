import 'package:ekofy_mobile/features/request_hub/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/public_request.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

class RequestCardModel {
  final String id;
  final String title;
  final String summary;
  final DateTime createdAt;
  final double minBudget;
  final double maxBudget;
  final Enum$CurrencyType currency;
  final String requestUserId;
  final String requestorDisplayName;
  final String? requestorAvatar;

  RequestCardModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.createdAt,
    required this.minBudget,
    required this.maxBudget,
    required this.currency,
    required this.requestUserId,
    required this.requestorDisplayName,
    this.requestorAvatar,
  });

  factory RequestCardModel.fromPublicRequest(PublicRequestItem item) {
    return RequestCardModel(
      id: item.id,
      title: item.title,
      summary: item.summary,
      createdAt: item.createdAt,
      minBudget: item.budget.min,
      maxBudget: item.budget.max,
      currency: item.currency,
      requestUserId: item.requestUserId,
      requestorDisplayName: item.requestor.displayName,
      requestorAvatar: item.requestor.avatarImage,
    );
  }

  factory RequestCardModel.fromOwnRequest(OwnRequestItem item) {
    return RequestCardModel(
      id: item.id,
      title: item.title,
      summary: item.summary,
      createdAt: item.postCreatedTime,
      minBudget: item.budget.min,
      maxBudget: item.budget.max,
      currency: item.currency,
      requestUserId: item.requestUserId,
      requestorDisplayName: 'Me',
      requestorAvatar: null,
    );
  }
}