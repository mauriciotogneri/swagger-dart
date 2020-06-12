import 'package:meta/meta.dart';

class Response {
  final int statusCode;
  final String description;
  final List<String> procudes;
  final Type type;
  final Type headers;

  Response({
    @required this.statusCode,
    this.description,
    this.procudes,
    this.type,
    this.headers,
  });
}
