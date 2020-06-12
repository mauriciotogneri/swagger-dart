import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:swagger/src/swagger/method.dart';
import 'package:swagger/src/swagger/parameters.dart';
import 'package:swagger/src/swagger/response.dart';

class EndPoint {
  final Method method;
  final String path;
  final String description;
  final bool deprecated;
  final Parameters parameters;
  final List<Response> responses;

  EndPoint({
    @required this.method,
    @required this.path,
    this.description,
    this.deprecated,
    this.parameters,
    this.responses,
  });

  Future<http.Response> execute(Parameters parameters) async {
    switch (method) {
      case Method.GET:
        // TODO(momo): Handle this case.
        break;

      case Method.POST:
        return http.post(
          parameters.getPath(path), // TODO(momo): construct full path
          headers: parameters.getHeaders(),
          body: parameters.getBody(),
          encoding: const Utf8Codec(),
        );

      case Method.PUT:
        // TODO(momo): Handle this case.
        break;

      case Method.PATCH:
        // TODO(momo): Handle this case.
        break;

      case Method.DELETE:
        // TODO(momo): Handle this case.
        break;
    }

    return null; // TODO(momo): remove
  }

  @override
  String toString() {
    return '${method.toString().replaceAll('Method.', '')} $path';
  }
}
