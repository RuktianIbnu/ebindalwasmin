import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Login/components/background.dart';
import 'package:eBindalwasmin/Screens/Signup/signup_screen.dart';
import 'package:eBindalwasmin/components/already_have_an_account_acheck.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';
import 'package:eBindalwasmin/components/rounded_input_field.dart';
import 'package:eBindalwasmin/components/rounded_password_field.dart';
import 'package:eBindalwasmin/Screens/Beranda/home3.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "e-Bindalwasmin",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black38),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/mapp.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "NIP",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
