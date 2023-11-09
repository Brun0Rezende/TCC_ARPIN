import 'package:ar_pin/utils/appbar.dart';
import 'package:flutter/material.dart';

class AdminQuestionarioPage extends StatefulWidget {
  const AdminQuestionarioPage({super.key});

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
  );
  }
}