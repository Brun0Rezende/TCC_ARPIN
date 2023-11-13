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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future deleteUser() async {
    await Future.delayed(const Duration(seconds: 5));
    await _firebaseAuth.currentUser!.delete();
  }

  Future isAchivementDone({required String idQuest}) async {
    await Future.delayed(const Duration(seconds: 1));
    DocumentSnapshot value = await FirebaseFirestore.instance
        .collection('users')
        .doc(_firebaseAuth.currentUser!.uid)
        .get();
    
    bool isDone = false;
    Map<String, dynamic> map = value.data() as Map<String, dynamic>;

    for (var i = 0; i < map.length; i++) {
      if (map[i] == idQuest) {
        isDone = true;
      }
    }
    return isDone;
  }
}
