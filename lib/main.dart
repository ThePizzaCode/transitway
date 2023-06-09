import 'package:flutter/material.dart';
import 'package:transitway/Pages/loginpage.dart';
import 'package:transitway/Pages/mainscreen.dart';
import 'package:transitway/Pages/navbar.dart';
import 'package:transitway/Pages/onboarding.dart';
import 'package:transitway/Pages/profilepage.dart';
import 'package:transitway/Pages/register1.dart';
import 'package:transitway/Pages/tickettypelist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: onboarding());
  }
}
