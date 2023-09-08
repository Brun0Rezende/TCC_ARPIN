import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyButtonPage(),
    );
  }
}

class MyButtonPage extends StatefulWidget {
  @override
  _MyButtonPageState createState() => _MyButtonPageState();
}

class _MyButtonPageState extends State<MyButtonPage> {
  Color buttonColor = Colors.blue; // Cor inicial do botão

  void changeButtonColor() {
    setState(() {
      // Altere a cor do botão aqui
      buttonColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trocar Cor do Botão'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Quando o botão é clicado, chame a função para alterar a cor
            changeButtonColor();
          },
          style: ElevatedButton.styleFrom(
            primary: buttonColor, // Use a cor atual do botão
          ),
          child: Text('Clique para Trocar Cor'),
        ),
      ),
    );
  }
}