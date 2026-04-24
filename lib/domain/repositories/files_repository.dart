import 'package:copyrush/domain/entities/file_entity.dart';

abstract class FilesRepository {
  FileEntity getFiles();
  void deleteFiles();
  void uploadFiles();
}
