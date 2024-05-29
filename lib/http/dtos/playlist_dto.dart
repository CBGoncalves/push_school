// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'video_dto.dart';

class Playlist {
  final List<Video> videos;

  Playlist({
    required this.videos,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) {
    var videosJson = json['playlist'] as List;
    List<Video> videosList =
        videosJson.map((videoJson) => Video.fromJson(videoJson)).toList();
    return Playlist(videos: videosList);
  }
}
