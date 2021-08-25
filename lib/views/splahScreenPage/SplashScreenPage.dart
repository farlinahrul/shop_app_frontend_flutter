import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/theme/PaletteColor.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.bgColor1,
      body: Center(
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
