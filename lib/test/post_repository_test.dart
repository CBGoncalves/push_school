import 'package:pushschool/http/repositorys/post_repository.dart';
import 'package:test/test.dart';

main() {
  final repository = PostRepository();
  test('deve pegar uma lista de posts da api de test', () async {
    final list = await repository.getPost();

    expect(list.isNotEmpty, equals(true));
    expect(list.first.title, equals("Introdução à Programação em Python"));
  });
}
