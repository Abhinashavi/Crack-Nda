import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import 'package:ndaapp/services/database.dart';
import 'package:ndaapp/views/pdfLoader.dart';

import 'package:ndaapp/widgets/widgets.dart';

class GatNdaPaper extends StatefulWidget {
  @override
  _GatNdaPaperState createState() => _GatNdaPaperState();
}

class _GatNdaPaperState extends State<GatNdaPaper> {
  Stream gatStream;
  DatabaseService databaseService = new DatabaseService();
  PDFDocument _doc;

  Widget gatList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: StreamBuilder(
        stream: gatStream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return GatTile(
                      imgUrl:
                          snapshot.data.documents[index].data["gatImgUrl"],
                      year: snapshot.data.documents[index].data["gatYear"],
                      gatPaperId:
                          snapshot.data.documents[index].data["gatPaperId"],
                      gatPdfUrl:
                          snapshot.data.documents[index].data["gatPdfUrl"],
                    );
                  });
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    databaseService.getGeneralAbilityPaperData().then((val) {
      setState(() {
        gatStream = val;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8CAAB1),
      appBar: AppBar(
        title: appBar1(context, "General", "Ability"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: gatList(),
    );
  }
}

class GatTile extends StatelessWidget {
  final String imgUrl;
  final String year;
  final String gatPaperId;
  final String gatPdfUrl;

  PDFDocument document;
  bool isLoading = true;

  GatTile(
      {@required this.year,
      @required this.imgUrl,
      @required this.gatPaperId,
      @required this.gatPdfUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PdfLoader(gatPdfUrl)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        height: 150,
        child: Stack(
          children: [
//            ClipRRect(
//                borderRadius: BorderRadius.circular(8),
//                child: CachedNetworkImage(
//                  imageUrl: imgUrl,
//                  width: MediaQuery.of(context).size.width - 48,
//                  fit: BoxFit.cover,
//                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF5D686B)
                  ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "General Ability",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    year,
                    style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
