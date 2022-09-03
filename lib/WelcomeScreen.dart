import 'dart:developer';

import 'package:chatapp/Login.dart';
import 'package:chatapp/RecoverPwd.dart';
import 'package:chatapp/UploadPic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Color maincolor = Color(0xFF4353E0);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/isometric-online-chat 1.png')
            ],
          ),
          SizedBox(height: 110),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Connecting Developers",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.5))
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: width - 120,
                child: Text(
                  "This app is targeting developers worldwide This is a unique chat app.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      height: 1.2,
                      // letterSpacing: 1.5,
                      color: Color(0xFF979797)),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UploadPic()))),
              child: Container(
                width: width - 150,
                height: 70,
                decoration: BoxDecoration(
                    color: maincolor, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
              ),
            )
          ]),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Login())))),
                child: Container(
                  child: Text(
                    "Log in ",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: maincolor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
