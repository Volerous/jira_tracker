import 'package:dio/dio.dart';

class BaseInterceptors extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      print(response.data);
    }
    super.onResponse(response, handler);
  }
}
