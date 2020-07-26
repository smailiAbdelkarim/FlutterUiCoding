import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
        Image.asset(
          'assets/profiles/1.jpeg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.50,

        ),


        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text("PORTFOLIO",style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1
          ),
          ),
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

        ),
         CustomPaint(
           painter: ProfilePainter(),
           child: Container(

           ),
         ),

        Positioned(
          left: MediaQuery.of(context).size.width*0.05,
          top:MediaQuery.of(context).size.height*0.35,
          child: CircleAvatar(
            minRadius: 40,
            backgroundImage: ExactAssetImage('assets/profiles/mypic.jpg'),
          ),
        ),
      ],

    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
   Path path = Path();
   Paint  paint = Paint();
   paint.color = Colors.white;
   path.lineTo(0,size.height*0.40);
   path.lineTo(size.width,size.height*0.50);
   path.lineTo(size.width,size.height);
   path.lineTo(0,size.height);
  //path.lineTo(0,size.height*0.25);
   canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
  return false;
  }


}