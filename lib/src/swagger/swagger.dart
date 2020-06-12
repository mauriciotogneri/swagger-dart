import 'dart:io';
import 'package:swagger/src/swagger/endpoint.dart';

class Swagger {
  final String title;
  final String version;
  final String schemes;
  final String host;
  final String basePath;
  final Map<String, List<EndPoint>> endPoints;

  Swagger({
    this.title,
    this.version,
    this.schemes,
    this.host,
    this.basePath,
    this.endPoints,
  });

  void save(String filePath) {
    final File file = File(filePath);
    file.writeAsString(toString());
  }

  @override
  String toString() {
    return '$title $version $schemes $host $basePath';
  }
}
