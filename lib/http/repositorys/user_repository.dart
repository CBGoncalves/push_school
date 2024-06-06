import 'dart:convert';
import 'package:http/http.dart';
import 'package:pushschool/http/dtos/user_dto.dart';

class UserRepository {
  final Client client = Client();

  Future<User> getUserByNamePass(
      String nomeUsuario, String senhaUsuario) async {
    final response = await client.get(Uri.parse(
        'http://172.16.1.49:5240/api/Usuario/${nomeUsuario}/${senhaUsuario}'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return User.fromMap(json);
    } else {
      throw Exception('Erro ao obter posts');
    }
  }
}
