

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:ndaapp/helper/sliderModel.dart';
import 'package:ndaapp/views/signin.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<SlideModel> slides = new List<SlideModel>();

  PageController pageController = new PageController(initialPage: 0);

  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  Widget pageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10 : 6.0,
      width: isCurrentPage ? 10 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(
        controller: pageController,
          itemCount: slides.length,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          itemBuilder: (context, index) {
            return SliderTile(
              imageAssetPath: slides[index].getImageAssetPath(),
              title: slides[index].getTitle(),
              description: slides[index].description,
            );
          }),
      bottomSheet: currentIndex != slides.length - 1
          ? Container(
              height: 70,
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(onTap: () {
                    pageController.animateToPage(slides.length - 1, duration: Duration(microseconds: 400), curve: Curves.linear);
                  }, child: Text("Skip")),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndicator(true)
                            : pageIndicator(false)
                    ],
                  ),
                  InkWell(onTap: () {
                    pageController.animateToPage(currentIndex + 1, duration: Duration(microseconds: 400), curve: Curves.linear);
                  }, child: Text("NEXT")),
                ],
              ),
            )
          : Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              color: Colors.grey,
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn()));
                },
                child: Text(
                  "Get Started Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
    );
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath, title, description;
  SliderTile({this.description, this.imageAssetPath, this.title});
  @override
  Widget build(BuildContext context) {
    return Container( //
      color: Colors.white54,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(
            height: 20,
          ),
          Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(
            height: 12,
          ),
          Text(description,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),)
        ],
      ),
    );
  }
}
