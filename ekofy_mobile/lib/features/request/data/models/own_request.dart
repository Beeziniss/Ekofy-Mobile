import 'package:ekofy_mobile/features/request/data/models/request_status.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';

class OwnRequestItem {
  final String id;
  final String requestUserId;
  final String? artistId;
  final String? packageId;
  final String title;
  final String? titleUnsigned;
  final String summary;
  final String? summaryUnsigned;
  final String detailDescription;
  final String? requirements;
  final DateTime postCreatedTime;
  final DateTime? updatedAt;
  final Enum$RequestType type;
  final Enum$CurrencyType currency;
  final int duration;
  final RequestStatus status;
  final DateTime? requestCreatedTime;
  final String? notes;
  final OwnRequestBudget budget;
  final OwnRequestArtist? artist;
  final OwnRequestPackage? artistPackage;
  final String? conversationId;

  OwnRequestItem({
    required this.id,
    required this.requestUserId,
    this.artistId,
    this.packageId,
    required this.title,
    this.titleUnsigned,
    required this.summary,
    this.summaryUnsigned,
    required this.detailDescription,
    this.requirements,
    required this.postCreatedTime,
    this.updatedAt,
    required this.type,
    required this.currency,
    required this.duration,
    required this.status,
    this.requestCreatedTime,
    this.notes,
    required this.budget,
    this.artist,
    this.artistPackage,
    this.conversationId,
  });

  factory OwnRequestItem.fromQueryItem(
    Query$OwnRequestsQuery$requests$items item,
  ) {
    return OwnRequestItem(
      id: item.id,
      requestUserId: item.requestUserId,
      artistId: item.artistId,
      packageId: item.packageId,
      title: item.title ?? '',
      titleUnsigned: item.titleUnsigned,
      summary: item.summary ?? '',
      summaryUnsigned: item.summaryUnsigned,
      detailDescription: item.detailDescription ?? '',
      requirements: item.requirements,
      postCreatedTime: item.postCreatedTime ?? DateTime.now(),
      updatedAt: item.updatedAt,
      type: item.type,
      currency: item.currency,
      duration: item.duration,
      status: RequestStatus.fromString(item.status.name),
      requestCreatedTime: item.requestCreatedTime,
      notes: item.notes,
      budget: OwnRequestBudget(
        min: item.budget?.min ?? 0.0,
        max: item.budget?.max ?? 0.0,
      ),
      artist: item.artist.isNotEmpty
          ? OwnRequestArtist.fromQueryItem(item.artist.first)
          : null,
      artistPackage: item.artistPackage.isNotEmpty
          ? OwnRequestPackage.fromQueryItem(item.artistPackage.first)
          : null,
    );
  }
}

class OwnRequestBudget {
  final double min;
  final double max;

  OwnRequestBudget({required this.min, required this.max});
}

class OwnRequestArtist {
  final String id;
  final String userId;
  final String? stageName;
  final String? avatarUrl;

  OwnRequestArtist({
    required this.id,
    required this.userId,
    this.stageName,
    this.avatarUrl,
  });

  factory OwnRequestArtist.fromQueryItem(
    Query$OwnRequestsQuery$requests$items$artist item,
  ) {
    return OwnRequestArtist(
      id: item.id,
      userId: item.userId,
      stageName: item.stageName,
      avatarUrl: item.avatarImage,
    );
  }
}

class OwnRequestPackage {
  final String id;
  final String? packageName;
  final double amount;
  final Enum$CurrencyType currency;
  final String description;
  final int maxRevision;
  final List<ServiceDetail> serviceDetails;

  OwnRequestPackage({
    required this.id,
    this.packageName,
    required this.amount,
    required this.currency,
    required this.description,
    required this.maxRevision,
    required this.serviceDetails,
  });

  factory OwnRequestPackage.fromQueryItem(
    Query$OwnRequestsQuery$requests$items$artistPackage item,
  ) {
    return OwnRequestPackage(
      id: item.id,
      packageName: item.packageName,
      amount: item.amount,
      currency: item.currency,
      description: item.description ?? '',
      maxRevision: item.maxRevision,
      serviceDetails: item.serviceDetails
          .map((detail) => ServiceDetail(key: detail.key, value: detail.value))
          .toList(),
    );
  }
}

class ServiceDetail {
  final String key;
  final String value;

  ServiceDetail({required this.key, required this.value});
}
