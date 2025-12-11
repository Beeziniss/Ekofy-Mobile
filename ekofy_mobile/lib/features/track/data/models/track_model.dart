import 'package:ekofy_mobile/gql/queries/generated/track_query.graphql.dart';

class TrackModel {
  final String id;
  final String name;
  final String coverImage;
  final List<String> mainArtistIds;
  final List<ArtistModel> mainArtists;
  final bool checkTrackInFavorite;
  final int? favoriteCount;
  final int? streamCount;

  TrackModel({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.mainArtistIds,
    required this.mainArtists,
    required this.checkTrackInFavorite,
    this.favoriteCount,
    this.streamCount,
  });

  factory TrackModel.fromQueryItem(Query$TrackList$tracks$items item) {
    return TrackModel(
      id: item.id,
      name: item.name,
      coverImage: item.coverImage,
      mainArtistIds: item.mainArtistIds,
      mainArtists:
          item.mainArtists?.items
              ?.map((artist) => ArtistModel.fromQueryItem(artist))
              .toList() ??
          [],
      checkTrackInFavorite: item.checkTrackInFavorite,
    );
  }

  factory TrackModel.fromDetailQueryItem(Query$TrackDetail$tracks$items item) {
    return TrackModel(
      id: item.id,
      name: item.name,
      coverImage: item.coverImage,
      mainArtistIds: item.mainArtistIds,
      mainArtists:
          item.mainArtists?.items
              ?.map((artist) => ArtistModel.fromDetailQueryItem(artist))
              .toList() ??
          [],
      checkTrackInFavorite: item.checkTrackInFavorite,
      favoriteCount: item.favoriteCount,
      streamCount: item.streamCount,
    );
  }

  String get artistNames {
    if (mainArtists.isEmpty) return 'Unknown Artist';
    return mainArtists.map((artist) => artist.stageName).join(', ');
  }
}

class ArtistModel {
  final String id;
  final String stageName;
  final String? avatarImage;
  final int? followerCount;
  final String? userId;
  final bool? checkUserFollowing;

  ArtistModel({
    required this.id,
    required this.stageName,
    this.avatarImage,
    this.followerCount,
    this.userId,
    this.checkUserFollowing,
  });

  factory ArtistModel.fromQueryItem(
    Query$TrackList$tracks$items$mainArtists$items item,
  ) {
    return ArtistModel(id: item.id, stageName: item.stageName);
  }

  factory ArtistModel.fromDetailQueryItem(
    Query$TrackDetail$tracks$items$mainArtists$items item,
  ) {
    return ArtistModel(
      id: item.id,
      stageName: item.stageName,
      avatarImage: item.avatarImage,
      followerCount: item.followerCount,
      userId: item.userId,
      checkUserFollowing: item.user.isNotEmpty == true
          ? item.user.first.checkUserFollowing
          : null,
    );
  }
}
