import 'package:flutter/material.dart';
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
      body: const SafeArea(
        child: RailMenu()
      ),
    );
  }
}
