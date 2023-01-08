import 'package:flutter/material.dart';
import 'package:office_app1/constants/constants.dart';
import 'package:office_app1/screens/mainScreen.dart';


late bool _passwordVisible;

class HomeScreen extends StatefulWidget {
   static String routeName='HomeScreen';
   static var _emailController = TextEditingController();


  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
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
            children: [
              SizedBox(
                width: 30,
              ),
              Text('Login',
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
                    color: boxColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 20.0,
                        offset: Offset(0, 10))
                    ]),
                child: Form(
                  key: _formKey,
                    child:Column(
                      children: <Widget>[
                        buildEmailField(),
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
                    color: boxColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 20.0,
                          offset: Offset(0, 10))
                    ]),
                child: Form(
                  key: _formKey,
                  child:Column(
                    children: <Widget>[
                      buildPasswordField(),
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
                color:Colors.black,
              ),
            ),

          ),
          Row(
            children:[
              Image.asset('assets/image/bLeft.png',height:250.0,width: 222.0,),
              Row(
                children:[
                  Image.asset('assets/image/bRight.png',height:150.0,width: 150.0,),
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
    controller: HomeScreen._emailController,
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