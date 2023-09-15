import 'package:flutter/material.dart';
import  'Quest.dart';
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
 var Resp;
  bool ButtonAc = true;

  Color buttonColor = const Color(0xffDAD1E4); // Cor inicial do botão
  
// void Button(String texto, int resp) {

//   Container(
//     margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
//     child: ElevatedButton(
//       onPressed: ButtonAc
//           ? () {
//               resp = 1;
//               changeButtonColor();
//             }
//           : null,
//       style: ElevatedButton.styleFrom(
//         primary: buttonColor, // Use a cor atual do botão
//         minimumSize: Size(919 * fem, 125 * fem),
//         elevation: 0,
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(50))),
//       ),
//       child: Text(
//         texto,
//         style: GoogleFonts.poppins(
//           fontSize: 48 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 1.5 * ffem / fem,
//           color: const Color(0xff000000),
//         ),
//       ),
//     ),
//   );
// }

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
