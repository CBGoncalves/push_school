import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/preview_card.dart';
import 'package:pushschool/components/railmenu.dart';
import 'package:pushschool/constants/text_consts.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        key: null,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: TextConsts.largeText,
                ),
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
