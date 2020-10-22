
class QuestionModel{
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  String correctedOption;
  bool answered;
}

class CategoryModel{
  String categoryName;
  String imageUrl;
}

class ArticleModel{
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String content;

  ArticleModel({this.author,this.title,this.description,this.url,this.urlToImage,this.content});
}