import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';




// Future getUsername() async{
//   FirebaseFirestore firestore = FirebaseFirestore.instance;

//   if (FirebaseAuth.instance.currentUser != null){
//     return await firestore.collection('users')
//     .doc(FirebaseAuth.instance.currentUser!.uid)
//     .get()
//     .then((DocumentSnapshot documentSnapshot){
//       if(documentSnapshot.exists){
//         Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
//         return data['username'];
//       }});
//     } 
//   } 

  // else {
  // return "ué, não cadrastrado?";
  // }
