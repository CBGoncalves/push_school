import 'package:pushschool/http/repositorys/user_repository.dart';
import 'package:test/test.dart';

main() {
  final repository = UserRepository();
  test('deve pegar um usuario da api de test', () async {
    String nomeUsuario = "Carlos Eduardo";
    String senhaUsuario = "teste123";
    final user = await repository.getUserByNamePass(nomeUsuario, senhaUsuario);

    expect(user.nomeUsuario, equals("Carlos Eduardo"));
    expect(user.senhaUsuario, equals("teste123"));
  });
}
