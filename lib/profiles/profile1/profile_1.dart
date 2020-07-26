import 'package:flutter/material.dart';
import 'package:flutteruicodiing/profiles/profile1/user.dart';
import 'provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        Image.asset('assets/profiles/1.jpeg',
           fit: BoxFit.cover,
           height: MediaQuery.of(context).size.height*0.45,
           ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text("Portfolio"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(FontAwesomeIcons.bars),
              onPressed: (){},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.cog),
                onPressed: (){},
                )
            ],


          ),
          body: Container(),
        )
      ],

    );
  }
}