import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool minhaVariavelBool = false; // Variável de estado inicial

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alterando o estado da variável'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Chamando a função para alterar o estado da variável
                  alterarEstadoVariavel();
                },
                child: const Text('Alterar Estado da Variável'),
              ),
              Text('Valor da variável: $minhaVariavelBool'),
            ],
          ),
        ),
      ),
    );
  }

  void alterarEstadoVariavel() {
    // Use setState para alterar o estado da variável
    setState(() {
      minhaVariavelBool = !minhaVariavelBool; // Inverte o valor da variável
    });
  }
}
