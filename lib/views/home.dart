import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndaapp/views/Dashboard.dart';
import 'package:ndaapp/views/quizMainDisplay.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF8CAAB1), // The background thing
      body: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 8,right: 14,left:14),
            child: Container(
              height: 180,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(16),
               image: DecorationImage(
                 
                 image: AssetImage("lib/images/asd.jpg"),
                 fit: BoxFit.fill
               )
             ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          GridBoard(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
