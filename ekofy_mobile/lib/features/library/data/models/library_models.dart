import 'dart:convert';

// Shared value classes for the Library feature (UI-only mock models)

class Playlist {
  final String id;
  final String name;
  final String? coverImage; // asset path or network; may be null
  final bool isPublic;
  final String userId;
  final bool isFavorited;

  const Playlist({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.isPublic,
    required this.userId,
    required this.isFavorited,
  });

  Playlist copyWith({
    String? id,
    String? name,
    String? coverImage,
    bool? isPublic,
    String? userId,
    bool? isFavorited,
  }) => Playlist(
        id: id ?? this.id,
        name: name ?? this.name,
        coverImage: coverImage ?? this.coverImage,
        isPublic: isPublic ?? this.isPublic,
        userId: userId ?? this.userId,
        isFavorited: isFavorited ?? this.isFavorited,
      );

  factory Playlist.fromJson(Map<String, dynamic> json) => Playlist(
        id: json['id'] as String,
        name: json['name'] as String,
        coverImage: json['coverImage'] as String?,
        isPublic: json['isPublic'] as bool? ?? true,
        userId: json['userId'] as String? ?? 'u1',
        isFavorited: json['isFavorited'] as bool? ?? false,
      );

  static List<Playlist> listFromJson(String text) {
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => Playlist.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class Track {
  final String id;
  final String name;
  final String artistName;
  final String? albumArt;
  final int duration; // seconds
  final bool isFavorited;

  const Track({
    required this.id,
    required this.name,
    required this.artistName,
    required this.albumArt,
    required this.duration,
    required this.isFavorited,
  });

  factory Track.fromJson(Map<String, dynamic> json) => Track(
        id: json['id'] as String,
        name: json['name'] as String,
        artistName: json['artistName'] as String,
        albumArt: json['albumArt'] as String?,
        duration: (json['duration'] as num?)?.toInt() ?? 0,
        isFavorited: json['isFavorited'] as bool? ?? false,
      );

  static List<Track> listFromJson(String text) {
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => Track.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class Album {
  final String id;
  final String name;
  final String artistName;
  final String? albumArt;
  final bool isFavorited;

  const Album({
    required this.id,
    required this.name,
    required this.artistName,
    required this.albumArt,
    required this.isFavorited,
  });

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        id: json['id'] as String,
        name: json['name'] as String,
        artistName: json['artistName'] as String,
        albumArt: json['albumArt'] as String?,
        isFavorited: json['isFavorited'] as bool? ?? false,
      );

  static List<Album> listFromJson(String text) {
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => Album.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class Artist {
  final String id;
  final String stageName;
  final String? avatarImage;
  final int followerCount;
  final bool isFollowing;
  final bool isVerified;

  const Artist({
    required this.id,
    required this.stageName,
    required this.avatarImage,
    required this.followerCount,
    required this.isFollowing,
    required this.isVerified,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => Artist(
        id: json['id'] as String,
        stageName: json['stageName'] as String,
        avatarImage: json['avatarImage'] as String?,
        followerCount: (json['followerCount'] as num?)?.toInt() ?? 0,
        isFollowing: json['isFollowing'] as bool? ?? false,
        isVerified: json['isVerified'] as bool? ?? false,
      );

  static List<Artist> listFromJson(String text) {
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => Artist.fromJson(e as Map<String, dynamic>)).toList();
  }
}

enum UserType { listener, artist }

class AppUser {
  final String id;
  final String name;
  final String? avatarImage;
  final UserType userType;
  final int followerCount;
  final bool isFollowingBack;

  const AppUser({
    required this.id,
    required this.name,
    required this.avatarImage,
    required this.userType,
    required this.followerCount,
    required this.isFollowingBack,
  });

  AppUser copyWith({
    String? id,
    String? name,
    String? avatarImage,
    UserType? userType,
    int? followerCount,
    bool? isFollowingBack,
  }) => AppUser(
        id: id ?? this.id,
        name: name ?? this.name,
        avatarImage: avatarImage ?? this.avatarImage,
        userType: userType ?? this.userType,
        followerCount: followerCount ?? this.followerCount,
        isFollowingBack: isFollowingBack ?? this.isFollowingBack,
      );

  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
        id: json['id'] as String,
        name: json['name'] as String,
        avatarImage: json['avatarImage'] as String?,
        userType: (json['userType'] as String).toLowerCase() == 'artist'
            ? UserType.artist
            : UserType.listener,
        followerCount: (json['followerCount'] as num?)?.toInt() ?? 0,
        isFollowingBack: json['isFollowingBack'] as bool? ?? false,
      );

  static List<AppUser> listFromJson(String text) {
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => AppUser.fromJson(e as Map<String, dynamic>)).toList();
  }
}
