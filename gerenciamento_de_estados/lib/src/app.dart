import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estados/src/telas/login_tela.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: LoginTela(),
      ),
    );
    throw UnimplementedError();
  }
}
