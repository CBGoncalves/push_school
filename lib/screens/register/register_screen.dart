import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/components/input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 60),
            child: Image.asset(
              'assets/img/logo_branca.png',
              width: 270,
            ),
          ),
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
                  label: 'Cadastrar'),
              Button(
                onPressed: () {
                  context.push('/');
                },
                label: 'Voltar',
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
