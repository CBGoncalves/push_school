import 'package:flutter/material.dart';
import 'package:pushschool/components/previewCard.dart';
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
          IconButton(icon: const Icon(Icons.search), onPressed: () {  },),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message))
        ],
      ),
      body:
      const Row(
        children: [
          RailMenu(),
          SizedBox(width: 6),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PreviewCard(
                  image: 'assets/img/logica_programacao.png',
                  icon: Icons.subscriptions,
                  title: 'Lógica de Programação',
                  subtitle: 'loren ipsun domain loren ipsun domain',
                  label: 'Ver Mais',
                  location: '/home',
                ),
              ],
            ),
          )
        ],),
      
    );
  }
}
