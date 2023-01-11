import 'package:flutter/material.dart';
import 'package:office_app1/constants/constants.dart';
import 'package:office_app1/screens/login_screen.dart';
// import 'package:quickalert/quickalert.dart';

class MainScreen extends StatefulWidget {
  static String routeName='MainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return Dialog(
               shape:RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
               ),
               elevation:0,
               backgroundColor: Colors.transparent,
               child:_buildChild(),

    );
  }

  //ACCESS GRANTED
  _buildChild() => Container(
        height: 380,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
         child: Column(
           children: [
             Image.asset('assets/image/accessGranted.png',height:150,width:170),
             SizedBox(
               height: 50,
             ),
             Text('Access Granted',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
             SizedBox(
               height:30 ,
             ),

             Text('The On-site radius is same as yours',style: TextStyle(fontSize:18),),
             SizedBox(
               height:25,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(onPressed:(){
                  },
                      color: btnColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color:btnColor,
                        ),
                        borderRadius: BorderRadius.circular(25),

                      ),
                      child:Text('Go in',style: TextStyle(fontSize:18),))
                ],
                ),
           ],
         ),

  );
}

//LOGOUT
  _buildExit() => Container(
    height: 380,
    width: 300,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Column(
      children: [
        Image.asset('assets/image/exit.png',height:150,width:170),
        SizedBox(
          height: 50,
        ),
        Text('EXIT',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
        SizedBox(
          height:30 ,
        ),

        Text('you have successfully logged out',style: TextStyle(fontSize:18),),
        SizedBox(
          height:25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed:(){
              // _buildAccess(context);
            },
                color: btnColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:btnColor,
                  ),
                  borderRadius: BorderRadius.circular(25),

                ),
                child:Text('OK',style: TextStyle(fontSize:18),))
          ],
        ),
      ],
    ),
  );

//ACCESS DENIED
_buildAccess() => Container(
  height: 380,
  width: 300,
  decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(30))
  ),
  child: Column(
    children: [
      Image.asset('assets/image/denied.png',height:150,width:170),
      SizedBox(
        height: 50,
      ),
      Text('ACCESS DENIED',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
      SizedBox(
        height:30 ,
      ),

      Text('On-Site radius does not match',style: TextStyle(fontSize:18),),
      SizedBox(
        height:25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed:(
              ){
            // _buildRemote(context);
          },
              color: btnColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:btnColor,
                ),
                borderRadius: BorderRadius.circular(25),

              ),
              child:Text('Go Back',style: TextStyle(fontSize:18),))
        ],
      ),
    ],
  ),
);

//REMOTE AREA
_buildRemote() => Container(
  height: 380,
  width: 300,
  decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(30))
  ),
  child: Column(
    children: [
      Image.asset('assets/image/remote.png',height:150,width:170),
      SizedBox(
        height: 50,
      ),
      Text('EXIT',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
      SizedBox(
        height:30 ,
      ),

      Text('Now you can work from anywhere',style: TextStyle(fontSize:18),),
      SizedBox(
        height:25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed:(){
            // _buildExitApp(context);
          },
              color: btnColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:btnColor,
                ),
                borderRadius: BorderRadius.circular(25),

              ),
              child:Text('ok',style: TextStyle(fontSize:18),))
        ],
      ),
    ],
  ),
);

//EXIT from app
_buildExitApp() => Container(
  height: 380,
  width: 300,
  decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(30))
  ),
  child: Column(
    children: [
      Image.asset('assets/image/exit.png',height:150,width:170),
      SizedBox(
        height: 50,
      ),
      Text('EXIT',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
      SizedBox(
        height:30 ,
      ),

      Text('We look forward to see you again',style: TextStyle(fontSize:18),),
      SizedBox(
        height:25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed:(){
            // HomeScreen();
          },
              color: btnColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:btnColor,
                ),
                borderRadius: BorderRadius.circular(25),

              ),
              child:Text('ok',style: TextStyle(fontSize:18),))
        ],
      ),
    ],
  ),
);
