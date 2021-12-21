import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/services/interceptors.dart';

final dioProvider = Provider((ref) {
  Dio dio = Dio();
  dio.interceptors.add(BaseInterceptors());
  return dio;
});
