import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Login/login_screen.dart';
import 'package:eBindalwasmin/Screens/Signup/components/background.dart';
import 'package:eBindalwasmin/Screens/Signup/components/or_divider.dart';
import 'package:eBindalwasmin/Screens/Signup/components/social_icon.dart';
import 'package:eBindalwasmin/components/already_have_an_account_acheck.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';
import 'package:eBindalwasmin/components/rounded_input_field.dart';
import 'package:eBindalwasmin/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/mapp.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
