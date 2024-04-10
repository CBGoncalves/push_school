import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/preview_card.dart';
import 'package:pushschool/components/railmenu.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
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
          const RailMenu(selectedDrawerIndex: 1),
          const SizedBox(
            width: 6,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nossos cursos",
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
                image: 'assets/img/javascript.png',
                icon: Icons.javascript,
                title: 'JavaScript',
                subtitle:
                    'JavaScript é uma linguagem de programação interpretada....',
                label: 'Ver mais',
                onPressed: () {
                  context.push('/home');
                },
              )
            ],
          )),
        ],
      ),
    );
  }
}
