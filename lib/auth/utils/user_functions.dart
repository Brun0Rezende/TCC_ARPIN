import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



getUsername(){
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  if (FirebaseAuth.instance.currentUser != null){
    return firestore.collection('users')
    .doc(FirebaseAuth.instance.currentUser!.uid)
    .get()
    .then((value) => value.data()!['username']);
    } 
  // else {
  // return "ué, não cadrastrado?";
  // }
}