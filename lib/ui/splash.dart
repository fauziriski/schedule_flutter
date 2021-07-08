import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

import 'package:schedule_app/ui/get_started.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer timer;
  int start = 1;

  _SplashState() {
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return GetStarted();
            }));
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }
//  setState(() {
//  Text
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: HexColor("#5444FF"),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/icons/Logo.svg'),
            SizedBox(height: 16),
            Text("My Schedule",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400))
          ],
        ),
        // decoration: BoxDecoration(color: ),
      )),
    )));
  }
}
