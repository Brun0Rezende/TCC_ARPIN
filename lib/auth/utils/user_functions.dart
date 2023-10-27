import 'package:firebase_auth/firebase_auth.dart';

getUsername(){
  if (FirebaseAuth.instance.currentUser != null){
    return FirebaseAuth.instance.currentUser!.email;
  } else{
  return "ué, não cadrastrado?";
  }
}