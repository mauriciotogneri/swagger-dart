import 'package:swagger/swagger.dart';

Future<dynamic> main() async {
  final swagger = Swagger(
    title: 'Backend',
    version: '1.0.0',
    schemes: 'https',
    host: 'foo.com',
    basePath: '/api',
    endPoints: {
      'Foo': [GetFooEndPoint()],
    },
  );
  swagger.save('backend.json');
  print(swagger);
}

class GetFooEndPoint extends EndPoint {
  GetFooEndPoint()
      : super(
          method: Method.GET,
          path: '/v1/foo',
          description: 'Gets the foos',
          deprecated: true,
          parameters: Parameters(
            headers: HeadersParameters,
            path: PathParameters,
            query: QueryParameters,
            form: FormParameters,
            data: DataParameters,
          ),
          responses: [
            Response(
              statusCode: StatusCode.OK,
              description: 'Successful operation',
              procudes: [MimeType.JSON],
              type: Person,
              headers: Headers,
            ),
          ],
        );
}

class HeadersParameters {
  @Name('x-session')
  String x_session;
}

class PathParameters {
  String restaurantId;
}

class QueryParameters {
  DateTime from;
  DateTime to;
}

class FormParameters {
  List<int> data;
}

class DataParameters {
  int id;
  String name;
  double weight;
}

class Person {
  int id;
  String name;
  double weight;
}

class Headers {
  String sample;
}
