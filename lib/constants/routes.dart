import 'package:flutter/material.dart';
import 'package:office_app1/screens/login_screen.dart';
import 'package:office_app1/screens/mainScreen.dart';
import 'package:office_app1/screens/splash_screen.dart';

Map<String,WidgetBuilder> routes={
   LoginScreen.routeName:(context) =>LoginScreen(),
   MainScreen.routeName:(context) =>MainScreen(),
   SplashScreen.routeName:(context) =>SplashScreen(),


};