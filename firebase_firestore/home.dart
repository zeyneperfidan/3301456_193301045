//
// import 'package:flutter/material.dart';
// import 'package:hotel_booking/service/auth.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   AuthService _authService = AuthService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountName: Text("Hello World"),
//                 accountEmail: Text("zeynepabc.com"),
//                 // currentAccountPicture: CircleAvatar(
//                 //   backgroundImage: AssetImage("assets/images/beyaz.png"),
//                 // ),
//               ),
//               ListTile(
//                 title: Text('Anasayfa'),
//                 leading: Icon(Icons.home),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: Text('Profilim'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 leading: Icon(Icons.person),
//               ),
//               Divider(),
//               ListTile(
//                 title: Text('Çıkış yap'),
//                 onTap: () {
//                   _authService.signOut();
//                   Navigator.pop(context);
//                 },
//                 leading: Icon(Icons.remove_circle),
//               ),
//             ],
//           ),
//         ),
//         //body: StatusListPage(),
//     );
//   }
// }