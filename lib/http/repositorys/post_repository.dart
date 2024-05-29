import 'dart:convert';
import 'package:http/http.dart';
import 'package:pushschool/http/dtos/post_dto.dart';

class PostRepository {
  final Client client = Client();

  Future<List<Post>> getPost() async {
    final response =
        await client.get(Uri.parse('http://192.168.15.111:5240/api/Post'));

    try {
      if (response.statusCode == 200) {
        final jsonList = jsonDecode(response.body) as List;

        return jsonList.map((e) => Post.fromMap(e)).toList();
      } else {
        throw Exception('Erro');
      }
    } catch (e) {
      print('Erro na solicitação HTTP: $e');
      throw Exception('Erro ao obter posts');
    }
  }
}
