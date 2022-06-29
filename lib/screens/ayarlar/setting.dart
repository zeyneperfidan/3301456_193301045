import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/Login_Screen.dart';
import 'package:hotel_booking/screens/ayarlar/booking_1.dart';
import 'package:hotel_booking/screens/ayarlar/favorited_1.dart';
import 'package:hotel_booking/screens/ayarlar/privacy_1.dart';
import 'package:hotel_booking/screens/ayarlar/security_1.dart';
import 'package:hotel_booking/screens/ayarlar/user.dart';
import 'package:hotel_booking/screens/ayarlar/visit_1.dart';
import 'package:hotel_booking/screens/ayarlar/theme_1.dart';
import 'package:hotel_booking/theme/color.dart';
import 'package:hotel_booking/widgets/setting_item.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        )
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ]),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 20, top: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Zeynep Erfidan",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "+905457541233",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          SettingPageItem(
              title: "Hesap Ayarları",
              leadingIcon: Icons.settings,
              leadingIconColor: orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => user(),
                  ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Rezervasyonlarım",
              leadingIcon: Icons.bookmark_border,
              leadingIconColor: Colors.green,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => booking_1(),),);
              }
              ),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Favorilerim",
              leadingIcon: Icons.favorite,
              leadingIconColor: red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => favorited1(),
                  ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Gizlilik",
              leadingIcon: Icons.privacy_tip_outlined,
              leadingIconColor: Colors.grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => privacy_1(),
                  ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Güvenlik",
              leadingIcon: Icons.security,
              leadingIconColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => security_1(),
                ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Ziyaret",
              leadingIcon: Icons.bar_chart,
              leadingIconColor: blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => visit_1(),
                  ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
              title: "Tema",
              leadingIcon: Icons.color_lens,
              leadingIconColor: Colors.purpleAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => theme_1(),
                  ),
                );
              }),
          SizedBox(height: 15),
          SettingPageItem(
            title: "Çıkış Yap",
            leadingIcon: Icons.logout_outlined,
            leadingIconColor: Colors.red,
            onTap: () {
              showConfirmLogout();
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: Text("Çıkış Yapmak İstiyor Musunuz?"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              "Çıkış Yap",
              style: TextStyle(color: actionColor),
            ),
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text("İptal"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
