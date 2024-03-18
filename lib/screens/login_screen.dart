import 'package:flutter/material.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/components/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final bool showAppBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/logo_branca.png',
            width: 270,
          ),
          const Input(label: 'Login'),
          const Input(label: 'Senha'),
          const Button(location: '/home', label: 'Entrar'),
          const Button(
            location: '/',
            label: 'Cadastre-se',
          ),
        ],
      ),
    ));
  }
}
