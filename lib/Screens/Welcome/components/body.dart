import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page/Screens/Welcome/components/background.dart';
import 'package:welcome_login_signup_page/constants.dart';
import 'package:welcome_login_signup_page/rounded_button.dart';

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
              "Welcome To Edu".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'Login',
              press: () {},
            ),
            RoundedButton(
              text: 'Signup',
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
