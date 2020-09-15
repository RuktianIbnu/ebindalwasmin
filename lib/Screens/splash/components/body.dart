import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Login/login_screen.dart';
import 'package:eBindalwasmin/Screens/splash/components/background.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';
import 'package:eBindalwasmin/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/mapp.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: 24.0),
            Text(
              "e-Bindalwasmin",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
