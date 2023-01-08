import 'package:flutter/material.dart';
import 'package:office_app1/screens/home_screen.dart';
import 'package:office_app1/screens/mainScreen.dart';

Map<String,WidgetBuilder> routes={
   HomeScreen.routeName:(context) =>HomeScreen(),
   MainScreen.routeName:(context) =>MainScreen(),

};