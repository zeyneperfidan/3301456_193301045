import 'package:flutter/material.dart';

class privacy_1 extends StatefulWidget {
  const privacy_1({Key? key}) : super(key: key);

  @override
  State<privacy_1> createState() => _privacy_1State();
}

class _privacy_1State extends State<privacy_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Gizlilik",
        ),
      ),
    );
  }
}
