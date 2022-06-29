// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:hotel_booking/screens/Login_Screen.dart';
//
// class FlutterFireAuthService {
//   final FirebaseAuth _firebaseAuth;
//
//   FlutterFireAuthService(this._firebaseAuth);
//
//   Stream<User>? get authStateChanges => _firebaseAuth.idTokenChanges();
//
//   Future<User?> createAccount(String name, String email, String password) async {
//     FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//     try {
//       User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
//           email: email, password: password))
//           .user;
//
//       if (user != null) {
//         print("Account created succesfully");
//
//         await _firestore
//             .collection('users')
//             .doc(_firebaseAuth.currentUser!.uid)
//             .set({
//           "user_id": _firebaseAuth.currentUser.uid,
//           "user_name": name,
//           "user_email": email,
//           "user_password": password,
//         });
//
//         return user;
//       } else {
//         print("Account creation failed");
//         return user;
//       }
//     } catch (e) {
//       print(e);
//       return null;
//     }
//   }
//
//   Future<User?> logIn(
//       String email, String password, BuildContext context) async {
//     try {
//       User? user = (await _firebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password))
//           .user;
//
//       if (user != null) {
//         print("Login Successfull");
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) {
//               return SeoTalepScreen();
//             },
//           ),
//         );
//         return user;
//       } else {
//         print("Login Failed");
//         showAlert("Error!", "Login Failed", context);
//         return user;
//       }
//     } catch (e) {
//       print(e);
//       showAlert("Error!", e.toString(), context);
//       return null;
//     }
//   }
//
//   Future<void> logOut(BuildContext context) async {
//     print("Log out icon clicked");
//
//     try {
//       await _firebaseAuth.signOut().then((value) {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (_) => LoginScreen()));
//       });
//       showAlert("Good Bye", "Have a nice day!", context);
//     } catch (e) {
//       print("error");
//     }
//   }
//
//   Future<dynamic> controlAuth() async {
//     _firebaseAuth.authStateChanges().listen((User user) {
//       if (user == null) {
//         print('User is currently signed out!');
//         return [];
//       } else {
//         print('User is signed in!');
//         print(user);
//         return user;
//       }
//     });
//   }
//