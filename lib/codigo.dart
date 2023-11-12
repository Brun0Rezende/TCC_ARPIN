import 'package:ar_pin/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CodigoPage extends StatefulWidget {
  final String text;
  const CodigoPage({super.key, required this.text});

  @override
  State<CodigoPage> createState() => _CodigoPageState();
}

class _CodigoPageState extends State<CodigoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ArpinAppBar().title(context),
        actions: ArpinAppBar().actions(context),
        backgroundColor: ArpinAppBar().backgroundColor,
        elevation: ArpinAppBar().elevation,
        leading: ArpinAppBar().leading(context),
        centerTitle: ArpinAppBar().centerTitle,
      ),
      body:  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => SingleChildScrollView(
          child: Markdown(data: widget.text),
        )
      ),
    );
  }
}