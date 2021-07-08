import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(Register());
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: 750,
              alignment: Alignment.center,
              color: HexColor("#5444FF"),
              padding:
                  EdgeInsets.only(top: 73, bottom: 120, right: 23, left: 23),
              child: Container(
                padding:
                    EdgeInsets.only(top: 17, bottom: 53, right: 19, left: 19),
                child: ListView(
                  children: <Widget>[
                    Text(
                      "Selamat Datang,",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Daftar untuk melanjutkan",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 34),
                    //name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Nama",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w300)),
                        SizedBox(height: 6),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    //email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Email",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w300)),
                        SizedBox(height: 6),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    //password
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Password",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w300)),
                        SizedBox(height: 6),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor("#5444FF")),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ))),
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
