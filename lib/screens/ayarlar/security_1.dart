import 'package:flutter/material.dart';

class security_1 extends StatefulWidget {
  const security_1({Key? key}) : super(key: key);

  @override
  State<security_1> createState() => _security_1State();
}

class _security_1State extends State<security_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          "Güvenlik",
        ),
      ),
    );
  }
}
