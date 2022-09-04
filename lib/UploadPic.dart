import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class UploadPic extends StatefulWidget {
  const UploadPic({Key? key}) : super(key: key);

  @override
  _UploadPicState createState() => _UploadPicState();
}

class _UploadPicState extends State<UploadPic> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Color maincolor = Color(0xFF4353E0);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Your Profile Photo",
                  style: TextStyle(
                      color: maincolor,
                      fontFamily: 'Metropolis',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width - 100,
                  child: Center(
                    child: Text(
                      "Add a profile photo to let people know you",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // height: 30,
                  //   child: Text(
                  //       ,
                  //       style: TextStyle(color: Colors.black)),
                )
              ],
            ),
            SizedBox(height: height / 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {}, // Image tapped
                  child: Image.asset(
                    "assets/images/Group 8.png",
                    fit: BoxFit.cover, // Fixes border issues
                    // width: 110.0,
                    // height: 110.0,
                  ),
                )
              ],
            ),
            SizedBox(height: height / 5),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: (() => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UploadPic()))),
                child: Container(
                  width: width - 150,
                  height: 70,
                  decoration: BoxDecoration(
                      color: maincolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Open Gallery",
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
                      "Skip ",
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
      ),
    );
  }
}
