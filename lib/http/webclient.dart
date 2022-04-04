import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'interceptors/logging_interceptor.dart';
final Client client = InterceptedClient.build(
  interceptors: [
    LoggingInterceptor(),
  ],
  requestTimeout: Duration(
    seconds: 5,
  ),
);

String baseUrl = 'http://192.168.88.1:8080/transactions';