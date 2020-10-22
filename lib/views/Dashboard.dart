
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndaapp/models/usermodel.dart';
import 'package:ndaapp/views/blogmain.dart';

import 'package:ndaapp/views/quizMainDisplay.dart';
import 'package:ndaapp/views/mathsNdaPaper.dart';
import 'package:ndaapp/views/newsHome.dart';
import 'package:ndaapp/views/syllabus.dart';

import 'gatNdaPaper.dart';


class GridBoard extends StatelessWidget {
  Items item1 = new Items(
      title: "Mathematics",
      subtitle: "Mathematics Papers",
      event: "18 Papers",
      img: "lib/images/maths.png");

  Items item2 = new Items(
    title: "General Ability",
    subtitle: "General Ability Papers",
    event: "18 Papers",
    img: "lib/images/chemistry.png",
  );
  Items item3 = new Items(
    title: "News",
    subtitle: "Get Daily News",
    event: "",
    img: "lib/images/newspaper.png",
  );
  Items item4 = new Items(
    title: "Quizzes",
    subtitle: "Evaluate Yourself",
    event: "",
    img: "lib/images/quiz.png",

  );
  Items item5 = new Items(
    title: "Syllabus",
    subtitle: "Syllabus and Paper Pattern",
    event: "",
    img: "lib/images/curriculum.png",
  );
  Items item6 = new Items(
    title: "Blog",
    subtitle: "Defence Blog",
    event: "Read and Conquer",
    img: "lib/images/blog.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFF5D686B;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap: (){
                if(data.title == "Quizzes"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home2()));
                }
                else if(data.title == "Mathematics"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MathsNdaPapers()));
                }

                else if(data.title == "General Ability"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GatNdaPaper()));
                }
                else if(data.title == "News"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeNews()));
                }
                else if(data.title == "Syllabus"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Syllabus()));
                }
                else if(data.title == "Blog"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlogMain()));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    
                    color: Color(color), borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

