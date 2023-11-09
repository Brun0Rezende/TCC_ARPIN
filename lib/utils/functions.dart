import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AdminPermissions {
Future<bool>  checkUserPermissions() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await firestore.collection('users').get();
    final userData = snapshot.docs
        .where(
            (element) => element.id == FirebaseAuth.instance.currentUser!.uid)
        .toList();
    if (userData[0].data()['permission'] == 'admin') {
      return true;
    } 
    else {
      return false;
    }
  }

  Widget adminFloatingActionButton() {
      return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        backgroundColor: Colors.blue,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            label: 'Opção 1',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              // Adicione a função que deseja executar aqui.
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.brush),
            backgroundColor: Colors.blue,
            label: 'Opção 2',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              // Adicione a função que deseja executar aqui.
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.keyboard_voice),
            backgroundColor: Colors.green,
            label: 'Opção 3',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              // Adicione a função que deseja executar aqui.
            },
          )
        ]);
  }
}
