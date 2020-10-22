import 'package:flutter/material.dart';
import 'package:ndaapp/helper/functions.dart';
import 'package:ndaapp/views/home.dart';
import 'package:ndaapp/views/quizMainDisplay.dart';
import 'package:ndaapp/views/results.dart';
import 'package:ndaapp/views/signin.dart';
import 'package:ndaapp/views/signup.dart';
import 'package:ndaapp/views/splashScreen.dart';
import 'package:ndaapp/views/syllabus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedin = false;

  @override
  void initState() {
    // TODO: implement initState
    checkUserStatus();
    super.initState();
  }

  checkUserStatus() async {
    HelperFunctions.getUserLogInDetails().then((value) {
      setState(() {
        _isLoggedin = value;
        print(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

     home://     Results()
     (_isLoggedin ?? false) ? Home() : SplashScreen(),
    );
  }
}
