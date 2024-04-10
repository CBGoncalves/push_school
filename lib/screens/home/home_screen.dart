import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/preview_card.dart';
import 'package:pushschool/components/railmenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
}
