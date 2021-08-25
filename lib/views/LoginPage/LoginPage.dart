import 'package:flutter/material.dart';
import 'package:shop_app/theme/PaletteColor.dart';
import 'package:shop_app/theme/TypographyStyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget header() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TypographyStyle.primaryTextStyle
                .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Text(
            'Sign In to Continue',
            style: TypographyStyle.subtitleTextStyle,
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: TypographyStyle.primaryTextStyle
                .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: PaletteColor.bgColor2,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TypographyStyle.primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: TypographyStyle.subtitleTextStyle),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: TypographyStyle.primaryTextStyle
                .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: PaletteColor.bgColor2,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_password.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TypographyStyle.primaryTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: TypographyStyle.subtitleTextStyle),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
        child: Text(
          'Sign In',
          style: TypographyStyle.primaryTextStyle
              .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        style: TextButton.styleFrom(
            backgroundColor: PaletteColor.primaryColor,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: TypographyStyle.subtitleTextStyle
                .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign Up',
              style: TypographyStyle.purpleTextColor.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: PaletteColor.bgColor1,
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 32),
        child: Column(
          children: [
            header(),
            emailInput(),
            passwordInput(),
            loginButton(),
            Spacer(),
            footer()
          ],
        ),
      ),
    );
  }
}
