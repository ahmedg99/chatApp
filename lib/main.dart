import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Metropolis'),
        home: const WelcomeScreen());
  }
}

// class _MainPageState extends State<MainPage> {
//   File? Image;
//   Future pickImage() async {}
// }
