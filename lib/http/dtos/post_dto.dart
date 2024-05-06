// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  final String id;
  final String title;
  final String description;
  final String owner;
  final String date;
  final List<Comment> comments;

  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.owner,
    required this.date,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'owner': owner,
      'date': date,
      'comments': comments.map((x) => x.toMap()).toList(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      owner: map['owner'] as String,
      date: map['date'] as String,
      comments: List<Comment>.from(
        (map['comments'] as List<dynamic>).map<Comment>(
          (x) => Comment.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Comment {
  final String user;
  final String comment;

  Comment({
    required this.user,
    required this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
      'comment': comment,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      user: map['user'] as String,
      comment: map['comment'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source) as Map<String, dynamic>);
}
