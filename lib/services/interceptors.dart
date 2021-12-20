import 'package:dio/dio.dart';
import 'package:jira_tracker/models/models.dart';

class BaseInterceptors extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      (response.data as List<dynamic>).forEach((element) {
        print(element["duration"]);
      });
    }
    super.onResponse(response, handler);
  }
}
