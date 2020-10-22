import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ndaapp/services/database.dart';
import 'package:ndaapp/views/blogView.dart';
import 'package:ndaapp/widgets/widgets.dart';

class BlogMain extends StatefulWidget {
  @override
  _BlogMainState createState() => _BlogMainState();
}

class _BlogMainState extends State<BlogMain> {
  Stream blogStream;
  DatabaseService databaseService = new DatabaseService();

  Widget blogList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: StreamBuilder(
        stream: blogStream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return BlogTile(
                  imgUrl: snapshot.data.documents[index].data["blogImgUrl"],
                  title: snapshot.data.documents[index].data["blogTitle"],
                  author: snapshot.data.documents[index].data["blogAuthor"],
                  description: snapshot.data.documents[index].data["blogDescription"],



                );
              });
        },
      ),
    );
  }

  @override
  void initState() {
    databaseService.getBlogDetails().then((val) {
      setState(() {
        blogStream = val;
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8CAAB1),
      appBar: AppBar(
        title: appBar1(context,"Defence", "Blog"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: blogList(),
      bottomSheet: Text("Blog will keep updating frequently."),
    );
  }
}

class  BlogTile extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  final String author;

  bool isLoading = true;

  BlogTile(
      {@required this.title,
        @required this.imgUrl,
        @required this.description,
        @required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BlogView(bDesc: description, bTitle: title, bAuthor: author, bImageUrl: imgUrl,)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        height: 300,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  width: MediaQuery.of(context).size.width - 48,
                  fit: BoxFit.cover,
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black26),
              alignment: Alignment.center,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Text(
                      "By - " + author,
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
