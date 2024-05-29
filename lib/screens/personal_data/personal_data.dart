import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/components/input.dart';

class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        pageTitle: "Editar Dados Pessoais",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Input(
            label: 'Nome',
          ),
          const Input(
            label: 'Sobrenome',
          ),
          const Input(
            label: 'E-mail',
          ),
          const Input(
            label: 'Telefone',
          ),
          const Input(
            label: 'Senha',
          ),
          const Input(
            label: 'Confirmar Senha',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                  onPressed: () {
                    context.go('/home');
                  },
                  label: 'Editar'),
              Button(
                onPressed: () {
                  context.push('/');
                },
                label: 'Cancelar',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
