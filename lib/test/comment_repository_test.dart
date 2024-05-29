import 'package:pushschool/http/repositorys/comment_repository.dart';
import 'package:test/test.dart';

main() {
  final repository = CommentRepository();
  test('deve pegar uma lista de posts da api de test', () async {
    int idPost = 1;
    final list = await repository.getCommentsByPostId(idPost);

    expect(list.isNotEmpty, equals(true));
    expect(list.first.userName, equals("Ana Silva"));
  });
}
