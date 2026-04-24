import 'package:copyrush/data/models/file_model.dart';

DateTime d = DateTime.now();
final result = '${d.day} - ${d.month} - ${d.year}';

List<FileModel> uploaddata = [
  FileModel(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
  FileModel(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
  FileModel(
      date: result,
      filename: "Sample file",
      shopname: "sample file name",
      status: true),
];
