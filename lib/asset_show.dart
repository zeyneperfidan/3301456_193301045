import 'package:flutter/material.dart';

class AssetShow extends StatefulWidget {
  @override
  _AssetShowState createState() => _AssetShowState();
}

class _AssetShowState extends State<AssetShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Odalar'),backgroundColor: Colors.blueGrey,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/a2.jpg')),
            SizedBox(height: 25),
            Image(image: AssetImage('assets/images/a3.jpg')),
            SizedBox(height: 25),
            Image(image: AssetImage('assets/images/a4.jpg')),
            SizedBox(height: 25),
            Image(image: AssetImage('assets/images/a6.jpg')),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}