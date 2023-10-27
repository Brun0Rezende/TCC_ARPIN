import 'package:ar_pin/Cadastro.dart';
import 'package:ar_pin/Login.dart';
import 'package:ar_pin/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Cadastro(),
      // },
    );
  }
}
