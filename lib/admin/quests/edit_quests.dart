import 'package:ar_pin/utils/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';

class AdminQuestionarioPage extends StatefulWidget {
  final String idQuest;
  const AdminQuestionarioPage({super.key, required this.idQuest});

  @override
  State<AdminQuestionarioPage> createState() => _AdminQuestionarioPageState();
}

class _AdminQuestionarioPageState extends State<AdminQuestionarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: ArpinAppBar().elevation,
        backgroundColor: Colors.white,
        actions: ArpinAppBar().actions(context),
        title: ArpinAppBar().title(context),
        centerTitle: ArpinAppBar().centerTitle,
        leading: ArpinAppBar().leading(context),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double baseWidth = 1040;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              children:  [
                const Text("Questionarios",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
                FutureBuilder(future: FirebaseFirestore.instance.collection("questionarios").doc(widget.idQuest).collection("perguntas").get(), builder: (context, snapshot){
                  if(!snapshot.hasData){
                    return const Center(child: ScaffoldMessenger(child: Text("Carregando..."),));
                  }

                  return SizedBox();

                  
                })
              ],
          
              
            ),
          );
        },
      ),
    );
  }
}
