import 'package:ar_pin/admin/quests/edit_quests.dart';
import 'package:ar_pin/admin/tutorial/tutorial_alter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AdminPermissions {
  Future<bool> checkUserPermissions() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await firestore.collection('users').get();
    final userData = snapshot.docs
        .where(
            (element) => element.id == FirebaseAuth.instance.currentUser?.uid)
        .toList();
    if (userData.isEmpty) return false;
    if (userData[0].data()['permission'] == 'admin') {
      return true;
    } else {
      return false;
    }
  }

  Widget adminFloatingActionButton(BuildContext context) {
    return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        backgroundColor: const Color(0xffe51f43),
        children: [
          SpeedDialChild(
            child: const Icon(color: Colors.white, Icons.format_list_bulleted_add),
            backgroundColor: const Color(0xffe51f43),
            label: 'Editar Tutoriais',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TutoAlter(),
                  ));
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AdminTutorialsPage()));
            },
          ),
          SpeedDialChild(
            child: const Icon(color: Colors.white, Icons.book_outlined),
            backgroundColor: const Color(0xffe51f43),
            label: 'Editar Materiais Didáticos',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AdminMaterialDidaticoPage()));
            },
          ),
          SpeedDialChild(
            child: const Icon(color: Colors.white, Icons.queue_play_next_sharp),
            backgroundColor: const Color(0xffe51f43),
            label: 'Editar Questionários',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminQuestionarioPage()));
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AdminQuestionarioPage()));
            },
          )
        ]);
  }
}
