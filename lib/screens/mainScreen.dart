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
    return Scaffold(

      backgroundColor:bgColor ,
        body:Column(
          children: [
            ElevatedButton(onPressed: (){_buildChild();}, child: Text('grant access')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){_buildExit();}, child: Text('logout')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){_buildAccess();}, child: Text('deny access')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:(){_buildRemote();}, child: Text('Remote area')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:(){_buildExitApp();}, child: Text('veliya po da')),
          ],
        ),

    );
  }

  //ACCESS GRANTED
  _buildChild() => Dialog(
    child: Container(
        height: 380,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30))
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
        Image.asset('assets/image/accessGranted.png',height:150,width:170),
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
              // _buildAccess(context);
            },
                color: btnColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:btnColor,
                  ),
                  borderRadius: BorderRadius.circular(25),

                ),
                child:Text('Exit',style: TextStyle(fontSize:18),))
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
      Image.asset('assets/image/accessGranted.png',height:150,width:170),
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
              child:Text('Exit',style: TextStyle(fontSize:18),))
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
      Image.asset('assets/image/accessGranted.png',height:150,width:170),
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
            // _buildExitApp(context);
          },
              color: btnColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:btnColor,
                ),
                borderRadius: BorderRadius.circular(25),

              ),
              child:Text('Exit',style: TextStyle(fontSize:18),))
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
      Image.asset('assets/image/accessGranted.png',height:150,width:170),
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
              child:Text('Exit',style: TextStyle(fontSize:18),))
        ],
      ),
    ],
  ),
);
