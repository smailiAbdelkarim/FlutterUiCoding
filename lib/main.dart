import 'package:flutter/material.dart';
import 'package:flutteruicodiing/profiles/profile1/profile_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Modern designe",
     debugShowCheckedModeBanner: false,
     home: Profile1(),
   );
  }
}




