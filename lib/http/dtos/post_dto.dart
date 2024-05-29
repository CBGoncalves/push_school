// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  final String idPost;
  final String title;
  final String content;
  final String ownerName;
  final String datePost;
  List<dynamic> comments;

  Post({
    required this.idPost,
    required this.title,
    required this.content,
    required this.ownerName,
    required this.datePost,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idPost': idPost,
      'title': title,
      'content': content,
      'ownerName': ownerName,
      'datePost': datePost,
      'comments': comments.toList(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
        idPost: map['idPost'].toString(),
        title: map['title'] as String,
        content: map['content'] as String,
        ownerName: map['ownerName'] as String,
        datePost: map['datePost'] as String,
        comments: map['comments'] as List<dynamic>);
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);
}
