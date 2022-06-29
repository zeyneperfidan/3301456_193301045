import 'package:flutter/material.dart';
import 'package:hotel_booking/widgets/setting_item.dart';

class favorited1 extends StatefulWidget {
  const favorited1({Key? key}) : super(key: key);

  @override
  State<favorited1> createState() => _favorited1State();
}

class _favorited1State extends State<favorited1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
        "Favoriler",
    ),
    ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          SettingPageItem(
                              title: "Conrad Otel",
                              leadingIcon: Icons.favorite,
                              leadingIconColor: Colors.pinkAccent,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => Image.asset('assets/images/a5.jpeg'),),);
                              }
                              ),
                          SizedBox(height: 15),
                          SettingPageItem(
                              title: "Hyatt Centric",
                              leadingIcon: Icons.favorite,
                              leadingIconColor: Colors.pinkAccent,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => Image.asset('assets/images/a1.jpg'),),);
                              }
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}