// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jira.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _JiraService implements JiraService {
  _JiraService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://novicell.atlassian.net/rest/api/3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<JiraCaseList> getJiracases(query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization':
          'Basic cG1jQG5vdmljZWxsLmRrOnhzdENBWlQ4aW9qaVdoc3R5RGxjNjA4MA==',
      r'authority': 'novicell.atlassian.net',
      r'pragma': ' no-cache',
      r'cache-control': ' no-cache',
      r'sec-ch-ua': ' ^^',
      r'Content-Type': ' application/json',
      r'X-Atlassian-Token': 'no-check'
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(query.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JiraCaseList>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: ' application/json')
            .compose(_dio.options, '/search',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JiraCaseList.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
