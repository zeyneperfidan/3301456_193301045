import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class visit_1 extends StatefulWidget {
  const visit_1({Key? key}) : super(key: key);

  @override
  State<visit_1> createState() => _visit_1State();
}

class _visit_1State extends State<visit_1> {
  @override
  Widget build(BuildContext context) {

    var data =[
      Ziyaret('Pazartesi', 154, Color(0xFFAED581)),
      Ziyaret('Salı', 102,Color(0xFFCE93D8)),
      Ziyaret('Çarşamba', 190,Color(0xFFFBC02D)),
      Ziyaret('Perşembe', 145,Color(0xFF4FC3F7)),
      Ziyaret('Cuma', 200,Color(0xFF78909C)),
      Ziyaret('Cumartesi', 180,Color(0xFFE57373)),
      Ziyaret('Pazar', 170,Color(0xFF26A69A)),
    ];

    var series = [
      charts.Series(
          domainFn: (Ziyaret ziyaret,_) => ziyaret.day,
          measureFn : (Ziyaret ziyaret,_) => ziyaret.visit,
          colorFn: (Ziyaret ziyaret,_) => ziyaret.color,
          id: 'Ziyaret',
          data: data,
          labelAccessorFn: (Ziyaret ziyaret,_) => '${ziyaret.day} : ${ziyaret.visit.toString()}'
      )
    ];

    var chart = charts.BarChart(
      series,
      vertical: false,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Ziyaret"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget> [
            SizedBox(height: 300 ,child: chart),
          ],
        )
        
      ),
    );
  }
}

class Ziyaret{
  final String day;
  final int visit;
  final charts.Color color;

  Ziyaret (this.day,this.visit,Color color)
  :this.color=charts.Color(r: color.red,g: color.green, b:color.blue);
}

