import 'package:flutter/material.dart';
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
        title:
            const Text('Olá, ', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message))
        ],
      ),
      body: const Row(
        children: [
          RailMenu(selectedDrawerIndex: 1),
          SizedBox(
            width: 6,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nossos cursos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              PreviewCard(
                image: 'assets/img/logica_programacao.png',
                icon: Icons.subscriptions,
                title: 'Lógica de Programação',
                subtitle: 'loren ipsun domain loren ipsun domain',
                label: 'Ver Mais',
                location: '/home',
              ),
              PreviewCard(
                  image: 'assets/img/javascript.png',
                  icon: Icons.javascript,
                  title: 'JavaScript',
                  subtitle:
                      'JavaScript é uma linguagem de programação interpretada....',
                  label: 'Ver mais',
                  location: '/home')
            ],
          )),
        ],
      ),
    );
  }
}
