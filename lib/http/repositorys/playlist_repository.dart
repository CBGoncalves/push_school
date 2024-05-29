import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

import '../dtos/playlist_dto.dart';

class PlaylistRepository {
  final Client client = Client();

  Future<Playlist> loadPlaylist() async {
    String jsonString =
        await rootBundle.loadString('assets/mocks/initial_course.json');
    final jsonResponse = json.decode(jsonString);
    return Playlist.fromJson(jsonResponse);
  }
}
