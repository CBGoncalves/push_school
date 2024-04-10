import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 100),
              child: Image.asset(
                'assets/img/logo_branca.png',
                width: 270,
              ),
            ),
            const Input(label: 'Login'),
            const Input(label: 'Senha'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  onPressed: () {
                    context.go('/home');
                  },
                  label: 'Entrar',
                ),
                Button(
                  onPressed: () {
                    context.push('/register');
                  },
                  label: 'Cadastre-se',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
