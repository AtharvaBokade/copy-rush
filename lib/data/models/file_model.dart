import 'package:copyrush/domain/entities/file_entity.dart';

class FileModel {
  final String date;
  final String filename;
  final String shopname;
  final bool status;

  FileModel({
    required this.date,
    required this.filename,
    required this.shopname,
    required this.status,
  });

  factory FileModel.fromJson(Map<String, dynamic> json) {
    return FileModel(
      date: json['date'],
      filename: json['filename'],
      shopname: json['shopname'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'filename': filename,
      'shopname': shopname,
      'status': status,
    };
  }

  FileEntity toEntity() {
    return FileEntity(
      date: date,
      filename: filename,
      shopname: shopname,
      status: status,
    );
  }
}
