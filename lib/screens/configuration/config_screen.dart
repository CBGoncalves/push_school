import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/components/railmenu.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        pageTitle: "Configurações",
      ),
      body: Row(
        children: [
          const RailMenu(selectedDrawerIndex: 3),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Button(
                    hasIcon: true,
                    icon: Icons.person,
                    label: "Dados Pessoais",
                    onPressed: () {
                      context.push('/personal-data');
                    },
                    mainAxisSize: MainAxisSize.max,
                  ),
                ),
                Button(
                  hasIcon: true,
                  icon: Icons.exit_to_app,
                  label: "Sair",
                  onPressed: () {
                    context.go('/');
                  },
                  mainAxisSize: MainAxisSize.max,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
