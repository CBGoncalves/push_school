import 'dart:convert';
import 'package:http/http.dart';
import 'package:pushschool/http/dtos/comment_dto.dart';

class CommentRepository {
  final Client client = Client();

  Future<List<Comment>> getCommentsByPostId(int idPost) async {
    final response = await client.get(
        Uri.parse('http://192.168.15.111:5240/api/Comment/comments/$idPost'));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;

      return jsonList.map((e) => Comment.fromMap(e)).toList();
    } else {
      throw Exception('Erro');
    }
  }
}
