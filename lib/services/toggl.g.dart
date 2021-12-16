// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TogglService implements TogglService {
  _TogglService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.track.toggl.com/api/v8';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<TogglTimer>> getTimeEntries(startDate, endDate) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'start_date': startDate,
      r'end_date': endDate
    };
    final _headers = <String, dynamic>{
      r'Authorization':
          'Basic Y2JmMmM5MzM2MmEyZDRkMWMwMmYyOTJjNGRmYTY0MDQ6YXBpX3Rva2Vu'
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<TogglTimer>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/time_entries',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => TogglTimer.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<TogglUser> getMe({withRelatedData = true}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'with_related_data': withRelatedData
    };
    final _headers = <String, dynamic>{
      r'Authorization':
          'Basic Y2JmMmM5MzM2MmEyZDRkMWMwMmYyOTJjNGRmYTY0MDQ6YXBpX3Rva2Vu'
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TogglUser>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/me',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TogglUser.fromJson(_result.data!);
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
