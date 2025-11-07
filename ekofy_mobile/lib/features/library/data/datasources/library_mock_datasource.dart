import 'package:flutter/services.dart' show rootBundle;

import '../models/library_models.dart';

//INFO: Mock datasource cho màn Library. Chỉ dùng cho UI demo.
// Khi tích hợp API/repository thật, thay thế lớp này và xóa các chỗ gọi mock để tránh sót.
class LibraryMockDataSource {
  static const _base = 'assets/mock/library/';

  Future<List<Playlist>> getPlaylists() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}playlists.json');
    return Playlist.listFromJson(text);
  }

  Future<List<Track>> getTracks() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}tracks.json');
    return Track.listFromJson(text);
  }

  Future<List<Album>> getAlbums() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}albums.json');
    return Album.listFromJson(text);
  }

  Future<List<Artist>> getArtists() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}artists.json');
    return Artist.listFromJson(text);
  }

  Future<List<AppUser>> getFollowers() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}followers.json');
    return AppUser.listFromJson(text);
  }

  Future<List<AppUser>> getFollowing() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final text = await rootBundle.loadString('${_base}following.json');
    return AppUser.listFromJson(text);
  }
}
