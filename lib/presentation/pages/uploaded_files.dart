import 'package:copyrush/data/datasource/filesDataSource/local_files_datasource.dart';
import 'package:flutter/material.dart';

class UploadedFiles extends StatefulWidget {
  const UploadedFiles({super.key});

  @override
  State<UploadedFiles> createState() => _UploadedFilesState();
}

class _UploadedFilesState extends State<UploadedFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Uploaded documents"),
        ),
        body: Column(
          children: uploaddata.map((upload) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 5),
                    borderRadius: BorderRadius.circular(10)),
                title: Text(upload.filename),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Shopname : ${upload.shopname}"),
                    Text(" Date : ${upload.date}"),
                    Text(
                      " Status : ${upload.status ? "Done " : "Failed "}",
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}
