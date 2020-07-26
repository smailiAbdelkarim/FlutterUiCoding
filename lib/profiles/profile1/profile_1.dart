import 'package:flutter/material.dart';
import 'package:flutteruicodiing/profiles/profile1/user.dart';
import 'provider.dart';
class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile = Profile1Provider.getProfile();
  @override
  Widget build(BuildContext context) {
        return Stack(
          children: <Widget>[
            Image.asset('assets/profiles/1.jpeg'),
          ],
        );
}
