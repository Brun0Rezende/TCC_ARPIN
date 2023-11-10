// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService{
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   EntrarUsuario({required String email, required String senha}){
//     print("METODO ENTRAR USUARIO");
//   }

//   CadastrarUsuario({ required String email, required String senha}){
//     print("METODO CADASTRAR USUARIO");
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future deleteUser() async{
    await Future.delayed(Duration(seconds: 5));
    await _firebaseAuth.currentUser!.delete();
  }
}