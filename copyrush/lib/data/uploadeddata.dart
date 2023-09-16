import 'package:copyrush/models/uploaded.dart';
import 'package:flutter/material.dart';

DateTime d = DateTime.now();
final result = '${d.day} - ${d.month} - ${d.year}';

List<Uploaded> uploaddata = [
  Uploaded(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
  Uploaded(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
  Uploaded(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
];
