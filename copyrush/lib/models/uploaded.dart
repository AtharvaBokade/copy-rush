class Uploaded {
  //final nonUtcIso8601 = dt.toIso8601String();

  //final utcIso8601 = dt.toUtc().toIso8601String();
  final String date;
  final String filename;
  final String shopname;
  final bool status;

  Uploaded(
      {required this.date,
      required this.filename,
      required this.shopname,
      required this.status});
}
