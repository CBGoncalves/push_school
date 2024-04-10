import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/preview_card.dart';
import 'package:pushschool/components/railmenu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushschool/screens/login/login_screen.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..add(HomeInitialized()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomePageOpened) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Olá, Carlos',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.message))
              ],
            ),
            body: Row(
              children: [
                const RailMenu(selectedDrawerIndex: 0),
                const SizedBox(width: 6),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Novidades para você",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      PreviewCard(
                        image: 'assets/img/logica_programacao.png',
                        icon: Icons.subscriptions,
                        title: 'Lógica de Programação',
                        subtitle: 'loren ipsun domain loren ipsun domain',
                        label: 'Ver Mais',
                        onPressed: () {
                          context.push('/home');
                        },
                      ),
                      PreviewCard(
                        image: 'assets/img/seguranca.png',
                        icon: Icons.article,
                        title:
                            'OWASP Top 10 - Sua aplicação é realmente segura? Descubra...',
                        subtitle: 'loren ipsun domain loren ipsun domain',
                        label: 'Ver Mais',
                        onPressed: () {
                          context.push('/home');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
        return const LoginScreen();
      },
    );
  }
}
