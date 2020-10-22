import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  final int correct, incorrect, total;

  const Results({this.correct, this.incorrect, this.total});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

//          height: MediaQuery.of(context).size.height,
//          width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ClipRRect(
                child: CachedNetworkImage(
              imageUrl: "https://images.unsplash.com/photo-1510925751334-0fe90906839b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=339&q=80",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            )),

            Center(
              child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("We fight to win and win with a KNOCK OUT, because there are no RUNNER UP in a war.",
                    style: TextStyle(fontFamily: 'RobotoMono', fontSize: 20,color: Colors.grey),),
                  ),
                  SizedBox(height: 220,),

                  Text("YOUR PERFORMANCE",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Text("Total Question : " + widget.total.toString(),style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Correct : " + widget.correct.toString() ,style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Wrong : " + widget.incorrect.toString() ,style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
