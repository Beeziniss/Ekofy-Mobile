import 'package:ekofy_mobile/features/request/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request/data/models/public_request.dart';
import 'package:ekofy_mobile/features/request/data/models/request_status.dart';
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
  final RequestStatus? status;
  final String? artistStageName;
  final String? requirements;
  final int? duration;
  final Enum$RequestType? type;
  final double? amount;

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
    this.status,
    this.artistStageName,
    this.requirements,
    this.duration,
    this.type,
    this.amount,
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
      status: item.status,
      duration: item.duration,
      type: Enum$RequestType.PUBLIC_REQUEST,
    );
  }

  factory RequestCardModel.fromOwnRequest(OwnRequestItem item) {
    return RequestCardModel(
      id: item.id,
      title: item.title,
      summary: item.summary,
      createdAt: item.requestCreatedTime!,
      minBudget: item.budget.min,
      maxBudget: item.budget.max,
      currency: item.currency,
      requestUserId: item.requestUserId,
      requestorDisplayName: 'Me',
      requestorAvatar: null,
      status: item.status,
      artistStageName: item.artist?.stageName,
      requirements: item.requirements,
      duration: item.duration,
      type: item.type,
      amount: item.artistPackage!.amount,
    );
  }
}
