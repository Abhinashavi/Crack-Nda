import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ndaapp/widgets/widgets.dart';

class BlogView extends StatefulWidget {
  final String bImageUrl, bTitle, bAuthor, bDesc;

  const BlogView(
      {@required this.bImageUrl,
      @required this.bTitle,
      @required this.bAuthor,
      @required this.bDesc});

  @override
  _BlogViewState createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xFF8CAAB1),
      appBar: AppBar(
        title: Text(
          "Defence Blogs",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: widget.bImageUrl,
//                        width: MediaQuery.of(context).size.width - 48,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(widget.bTitle,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "By - " + widget.bAuthor,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                ),
                Divider(),
                SizedBox(
                  height: 14,
                ),
                Text(widget.bDesc,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Are your an enthusiast writer Mail your blog at ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "abhinash.yadav@xaviers.edu.in ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
