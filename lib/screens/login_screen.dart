import 'package:flutter/material.dart';
import 'package:office_app1/constants/constants.dart';
import 'package:office_app1/screens/mainScreen.dart';


late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
   static String routeName='LoginScreen';
   static var _emailController = TextEditingController();


  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool isSwitched = true;
  var textValue = 'Office';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  void toggleSwitch(bool value) {
    if (isSwitched == true) {
      setState(() {
        isSwitched = false;
        textValue = 'Home';
      });
      print('Home');
    } else {
      setState(() {
        isSwitched = true;
        textValue = 'Office';
      });
      print('Office');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGcolor,
      body:ListView(
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:200,
              ),
              Container(
                height: 128,
                width: 265,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/iLogo.png'),
                    )
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width:30,
              ),
              Text('Login',
              style: TextStyle(color:Colors.black,fontSize: 20),),
              SizedBox(
                width:180,
              ),
              Text('Office'),
              Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
                activeColor: Colors.white,
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.redAccent,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 350,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                  ),
                child: Form(
                  key: _formKey,
                    child:Column(
                      children: <Widget>[
                        buildEmailField(),

                        buildPasswordField(),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text('Password',
                style: TextStyle(color:Colors.black,fontSize: 20),)
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 350,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),

                ),
                child: Form(
                  key: _formKey,
                  child:Column(
                    children: <Widget>[

                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 75,
            // width: 50,
          ),

      Column(
        children:<Widget> [
          MaterialButton(
            color: btnColor,
            minWidth: 90,
            height: 40,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context,
                  MainScreen.routeName,
                      (route) => true);
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color:btnColor,
              ),
              borderRadius: BorderRadius.circular(25),

            ),
            child: Text('Login',
              style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 18,
                color:Colors.white,
              ),
            ),

          ),
          Row(
            children:[
              Image.asset('assets/image/bLeft.png',height:250.0,width: 220.0,),
              Row(
                children:[
                  Image.asset('assets/image/bRight.png',height:250.0,width: 170.0,),
                ],
              ),
            ],
          ),
        ],

        ),


    ]));
  }
}
TextFormField buildEmailField() {
  return TextFormField(
    controller: LoginScreen._emailController,
    textAlign: TextAlign.start,
    keyboardType: TextInputType.emailAddress,
    textDirection: TextDirection.ltr,
    style: TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    ),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Employee ID',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (value) {
      //for validation
      RegExp regExp = new RegExp(emailPattern);
      if (value == null || value.isEmpty) {
        return 'please enter the mail';
        //if it doesnot matches the pattern,like
        // it not contains @
      } else if (!value.contains('@ideassion.com')) {
        return 'Please Enter Valid Email of organization ';
      } else if (!regExp.hasMatch(value)) {
        return 'Please enter a valid email ';
      }
    },
  );
}
TextFormField buildPasswordField() {
  return TextFormField(
    obscureText: _passwordVisible,
    textAlign: TextAlign.start,
    keyboardType: TextInputType.visiblePassword,
    textDirection: TextDirection.ltr,
    style: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
    ),
    decoration: InputDecoration(
      labelText: 'Password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isDense: true,
      suffixIcon: IconButton(
        onPressed: () {
          // setState(() {
          //   _passwordVisible = !_passwordVisible;
          // });

        },
        icon: Icon(
          _passwordVisible ? Icons.visibility_off_outlined : Icons.visibility,
        ),
      ),
    ),
    validator: (value) {
      if (value!.length < 5) {
        return 'Must be more than 5 characters';
      }
    },
  );
}