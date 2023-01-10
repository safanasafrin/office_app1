import 'package:flutter/material.dart';
import 'package:office_app1/constants/routes.dart';
import 'package:office_app1/screens/login_screen.dart';
import 'package:office_app1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

