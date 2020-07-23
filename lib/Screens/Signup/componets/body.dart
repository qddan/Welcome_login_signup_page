import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page/Screens/Login/login_screen.dart';
import 'package:welcome_login_signup_page/Screens/Signup/componets/background.dart';
import 'package:welcome_login_signup_page/Screens/Signup/componets/or_divider.dart';
import 'package:welcome_login_signup_page/components/already_have_an_account_check.dart';
import 'package:welcome_login_signup_page/components/rounded_button.dart';
import 'package:welcome_login_signup_page/components/rounded_password_field.dart';
import 'package:welcome_login_signup_page/components/text_field_container.dart';
import 'package:welcome_login_signup_page/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Signup".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Signup".toUpperCase(),
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocalIcon(
                press: () {},
                srcIcon: "assets/icons/facebook.svg",
              ),
              SocalIcon(
                press: () {},
                srcIcon: "assets/icons/twitter.svg",
              ),
              SocalIcon(
                press: () {},
                srcIcon: "assets/icons/google-plus.svg",
              )
            ],
          )
        ],
      ),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String srcIcon;
  final Function press;
  const SocalIcon({
    Key key,
    this.srcIcon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          srcIcon,
          color: kPrimaryColor,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
