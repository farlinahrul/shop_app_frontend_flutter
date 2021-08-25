import 'package:flutter/material.dart';
import 'package:shop_app/views/DashboardPage/DashboardPage.dart';
import 'package:shop_app/views/LoginPage/LoginPage.dart';
import 'package:shop_app/views/LoginPage/SignUpPage.dart';
import 'package:shop_app/views/splahScreenPage/SplashScreenPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreenPage(),
        '/sign-in': (context) => LoginPage(),
        '/sign-up': (context) => SignUpPage(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
