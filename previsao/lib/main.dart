import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Previsão",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Responsivo(),
    );
  }
}

class Responsivo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previsão'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Botao_InputLayout();
          return constraints.maxWidth <= 768
              ? const Text('Pequeno')
              : const Text('Grande');
        },
      ),
    );
  }
}

class Botao_InputLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Botao_InputState();
  }
}

class Botao_InputState extends State<Botao_InputLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: Center(
                child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {},
          child: Text('TextButton'),
        ))),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Digite uma Cidade',
          ),
        ),
      ],
    );
  }
}
