import 'dart:convert';

class Comment {
  final String userName;
  final String userComment;

  Comment({
    required this.userName,
    required this.userComment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userComment': userComment,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      userName: map['userName'] as String,
      userComment: map['userComment'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source) as Map<String, dynamic>);
}
