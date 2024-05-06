import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/preview_card.dart';
import 'package:pushschool/constants/text_consts.dart';
import '../../components/railmenu.dart';

class HomeInitScreen extends StatelessWidget {
  const HomeInitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        key: null,
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
