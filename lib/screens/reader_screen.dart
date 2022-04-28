import 'package:flutter/material.dart';
import 'package:pdf/models/doccument_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
 ReaderScreen(this.doc, { Key? key }) : super(key: key);
  Document doc;
  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.doc.doc_title),
      ),

      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url),
      ),
    );
  }
}