import 'package:flutter/material.dart';
import 'package:pushschool/http/repositorys/playlist_repository.dart';
import 'package:test/test.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  final repository = PlaylistRepository();
  test('deve pegar uma playlist de videos do json mock', () async {
    final list = await repository.loadPlaylist();

    expect(list.videos.isNotEmpty, equals(true));
    expect(
        list.videos.first.title,
        equals(
            "Programação de Computadores - Aula 01 - Apresentação da Disciplina"));
  });
}
