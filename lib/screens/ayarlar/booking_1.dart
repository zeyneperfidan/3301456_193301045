import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/ayarlar/otel_detay.dart';
import 'package:hotel_booking/widgets/setting_item.dart';


class booking_1 extends StatefulWidget {
  const booking_1({Key? key}) : super(key: key);

  @override
  State<booking_1> createState() => _booking_1State();
}

class _booking_1State extends State<booking_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Rezervasyonlar",
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
                            title: "Antalya Puding Marina Otel                                    8 Ağustos 2022 Pazartesi",
                              leadingIcon: Icons.bookmark,
                              leadingIconColor: Colors.green,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => otel_detay(),
                                ),
                                );
                              }),
                          SizedBox(height: 15),
                          SettingPageItem(
                              title: "SunBay Park Hotel                                        5 Eylül 2022 Pazartesi",
                              leadingIcon: Icons.bookmark,
                              leadingIconColor: Colors.green,
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => otel_detay(),
                                ),
                                );
                              }),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ])))
    );
  }
}