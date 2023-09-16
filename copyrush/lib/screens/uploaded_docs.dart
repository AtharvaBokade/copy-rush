import 'package:copyrush/models/uploaded.dart';
import 'package:flutter/material.dart';
import '../data/uploadeddata.dart';

class UploadedDocs extends StatefulWidget {
  const UploadedDocs({super.key});

  @override
  State<UploadedDocs> createState() => _UploadedDocsState();
}

class _UploadedDocsState extends State<UploadedDocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uploaded documents"),
        ),
        body: Column(
          children: uploaddata.map((upload) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 5),
                    borderRadius: BorderRadius.circular(10)),
                title: Text(upload.filename),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Shopname : " + upload.shopname),
                    Text(" Date : " + upload.date),
                    Text(
                      " Status : " + (upload.status ? "Done " : "Failed "),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}
