import 'package:flutter/material.dart';

class theme_1 extends StatefulWidget {
  const theme_1({Key? key}) : super(key: key);

  @override
  State<theme_1> createState() => _theme_1State();
}

class _theme_1State extends State<theme_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text(
          "Tema",
        ),
      ),
    );
  }
}