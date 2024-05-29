import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/comment_card.dart';
import 'package:pushschool/http/dtos/playlist_dto.dart';
import 'package:pushschool/http/repositorys/playlist_repository.dart';

class InitialCourseScreen extends StatefulWidget {
  const InitialCourseScreen({super.key});

  @override
  State<InitialCourseScreen> createState() => _InitialCourseScreenState();
}

class _InitialCourseScreenState extends State<InitialCourseScreen> {
  late Future<Playlist> futurePlaylist;
  late PlaylistRepository playlistRepository;

  @override
  void initState() {
    super.initState();
    playlistRepository = PlaylistRepository();
    futurePlaylist = playlistRepository.loadPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const TopBar(
          pageTitle: "Curso: Programação de Computadores",
        ),
        body: FutureBuilder<Playlist>(
          future: futurePlaylist,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Erro ao carregar a playlist'));
            } else if (snapshot.hasData) {
              return Column(
                children: [
                  TabBar(
                    tabs: const [
                      Tab(text: 'Detalhes'),
                      Tab(text: 'Conteúdo'),
                    ],
                    indicatorColor: Theme.of(context).primaryColor,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _detailsTab(),
                        _contentTab(snapshot.data ?? Playlist(videos: [])),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

Widget _detailsTab() {
  return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Informações do Curso",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF9EA1A5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.play_arrow,
              ),
              Text(
                " 28 aulas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xff242b36),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Descrição do Curso",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9EA1A5),
                      ),
                    ),
                  ),
                  Text(
                    "Nesta disciplina são apresentados os conceitos básicos de organização de computadores e projeto (ou construção) de algoritmos. A ementa inclui operações aritméticas, variáveis, tipos de dados, métodos, parâmetros, condicionais, estruturas de repetição (laços), arranjos e matrizes. Também são apresentados conceitos de Programação Orientada a Objetos (classes, objetos, construtores etc.). Por fim, alguns algoritmos clássicos são discutidos: busca sequencial e binária e algoritmos de ordenação. A linguagem de programação Java é utilizada nos exemplos de código.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _contentTab(Playlist playlist) {
  return Scaffold(
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: playlist.videos.length,
            itemBuilder: (context, index) {
              var item = playlist.videos[index];
              return GestureDetector(
                onTap: () {
                  context.push(
                    '/player',
                    extra: item,
                  );
                },
                child: CommentCard(
                  hasImage: true,
                  image: item.thumbnail,
                  userName: "Aula ${index + 1}",
                  userComment: item.title,
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
