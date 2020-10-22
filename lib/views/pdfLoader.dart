import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:http/http.dart' as http;

class PdfLoader extends StatefulWidget {
  final String mathsPdfUrl;
  PdfLoader(this.mathsPdfUrl);

  @override
  _PdfLoaderState createState() => _PdfLoaderState();
}

class _PdfLoaderState extends State<PdfLoader> {
  bool _loading;
  PDFDocument _document;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initPDF();
  }

  _initPDF() async {
    setState(() {
      _loading = true;
      print(widget.mathsPdfUrl);
    });

    final document = await PDFDocument.fromAsset(widget.mathsPdfUrl);
    setState(() {
      _document = document;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? Center(
          child: SpinKitFadingCube(
            size: 50,
            color: Colors.grey,
          )
      )
          : PDFViewer(
        document: _document,
        indicatorBackground: Colors.green,
      ),
    );
  }
}
