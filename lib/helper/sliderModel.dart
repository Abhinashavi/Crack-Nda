import 'package:ndaapp/views/pdfLoader.dart';

class SlideModel {
  String imagePath;
  String title;
  String description;

  SlideModel({this.description, this.title, this.imagePath});

  void setImageAssetPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

List<SlideModel> getSlides() {
  List<SlideModel> slides = new List<SlideModel>();
  SlideModel slideModel = new SlideModel();

  slideModel.setImageAssetPath("lib/images/splashQuiz.png");
  slideModel.setTitle("Weekly Quizzes");
  slideModel.setDescription("Get weekly quizzes on our app in order to access with real time checking that whether you are prepared for writing NDA Examination or you need more scope of improvement");
  slides.add(slideModel);


  slideModel = new SlideModel();
  slideModel.setImageAssetPath("lib/images/QuestionPaper.png");
  slideModel.setTitle("Sample Papers");
  slideModel.setDescription("Our App also provides you original UPSC NDA papers of MATHEMATICS and GENERAL ABILITY from 2012 to till date");
  slides.add(slideModel);

  slideModel = new SlideModel();
  slideModel.setImageAssetPath("lib/images/news.png");
  slideModel.setTitle("Daily News");
  slideModel.setDescription("Get daily news in to brush up your current affairs and take a lead in General Ability current sections");
  slides.add(slideModel);

  slideModel = new SlideModel();
  slideModel.setImageAssetPath("lib/images/Syllabus.png");
  slideModel.setTitle("Syllabus");
  slideModel.setDescription("You will get detail syllabus and pattern of Mathematics as well as General Ability Section.");
  slides.add(slideModel);

  slideModel = new SlideModel();
  slideModel.setImageAssetPath("lib/images/splash_blog.png");
  slideModel.setTitle("Blog");
  slideModel.setDescription("Read or write the defence blog and keep yourself motivated. In order to live a life which is less ordinary.");
  slides.add(slideModel);

  return slides;
}
