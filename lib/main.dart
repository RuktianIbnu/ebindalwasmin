import 'package:eBindalwasmin/Screens/Login/login_screen.dart';
import 'package:eBindalwasmin/constants.dart';
import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/splash/splash_screen.dart';
import './constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
