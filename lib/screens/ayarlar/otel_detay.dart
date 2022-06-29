import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class otel_detay extends StatefulWidget {
  const otel_detay({Key? key}) : super(key: key);

  @override
  State<otel_detay> createState() => _otel_detayState();
}

class _otel_detayState extends State<otel_detay> {
  String _htmlVeri = '';

  Future _istek() async {
    await http.get(Uri.parse('https://pudinghotel.com/')).then((gelenVeri) {
      _htmlVeri = gelenVeri.body;
      debugPrint(_htmlVeri);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otel Detay'),
        actions: <Widget>[
          IconButton(
            onPressed: _istek,
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: _htmlVeri.length > 0
            ? SingleChildScrollView(
                child: Text(_htmlVeri),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
