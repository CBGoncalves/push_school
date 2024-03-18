import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    super.key
  });

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: AppBar(
        title: const Text('Olá, Carlos',
        style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {  },),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message))
        ],
      ),
    );
  }
}