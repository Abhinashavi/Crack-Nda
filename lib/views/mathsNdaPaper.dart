
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import 'package:ndaapp/services/database.dart';
import 'package:ndaapp/views/pdfLoader.dart';

import 'package:ndaapp/widgets/widgets.dart';

class MathsNdaPapers extends StatefulWidget {
  @override
  _MathsNdaPapersState createState() => _MathsNdaPapersState();
}

class _MathsNdaPapersState extends State<MathsNdaPapers> {
  Stream mathsStream;
  DatabaseService databaseService = new DatabaseService();
  PDFDocument _doc;

  Widget mathList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: StreamBuilder(
        stream: mathsStream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return MathsTile(
                      imgUrl:
                          snapshot.data.documents[index].data["mathsImgUrl"],
                      year: snapshot.data.documents[index].data["mathsYear"],
                      mathsPaperId:
                          snapshot.data.documents[index].data["mathsPaperId"],
                      mathsPdfUrl:
                          snapshot.data.documents[index].data["mathsPdfUrl"],
                    );
                  });
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    databaseService.getMathsPaperData().then((val) {
      setState(() {
        mathsStream = val;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8CAAB1),
      appBar: AppBar(
        title: appBar1(context, "Math", "ematics"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: mathList(),
    );
  }
}

class MathsTile extends StatelessWidget {
  final String imgUrl;
  final String year;
  final String mathsPaperId;
  final String mathsPdfUrl;

  PDFDocument document;
  bool isLoading = true;

  MathsTile(
      {@required this.year,
      @required this.imgUrl,
      @required this.mathsPaperId,
      @required this.mathsPdfUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PdfLoader(mathsPdfUrl)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        height: 150,
        child: Stack(
          children: [
//            ClipRRect(
//                borderRadius: BorderRadius.circular(8),
//                child: Image(image: AssetImage(
//                  imgUrl
//                ),
//
//                )),
            Container(
              decoration: BoxDecoration(

//                  image: DecorationImage(image: AssetImage(imgUrl),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF5D686B)),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mathematics",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Year : " + year,
                    style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
