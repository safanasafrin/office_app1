import 'package:flutter/material.dart';
import 'package:office_app1/constants/constants.dart';
import 'package:office_app1/screens/login_screen.dart';
import 'package:progress_indicators/progress_indicators.dart';


class SplashScreen extends StatefulWidget {
  static String routeName='SplashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      //for not returning to splash screen
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });
    return Scaffold(
      backgroundColor: BGcolor,
      body:
      Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset('assets/image/butterfly.png',),
             Column(
               children: [
                 JumpingText('Loading...',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.purple.shade900),),],
             ),
           ],

         ),

      ),
    );
  }
}
