// ignore_for_file: public_member_api_docs, sort_constructors_first

class Video {
  final String videoId;
  final String title;
  final String description;
  final String thumbnail;
  final String publishedAt;

  Video({
    required this.videoId,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.publishedAt,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      videoId: json['videoId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
      publishedAt: json['publishedAt'] as String,
    );
  }
}
