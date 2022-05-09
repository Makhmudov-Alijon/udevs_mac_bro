// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.client.macbro.uz';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BannersModel> getBanner() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BannersModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v1/banner',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BannersModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ExamCategoryModel2> getCategory() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ExamCategoryModel2>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v1/category',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ExamCategoryModel2.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NewExamMap> getNewProduct(lang) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lang': lang};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NewExamMap>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v1/featured-list/rasprodazha?lang=ru',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NewExamMap.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoryChildItem> getCategoryChildItem(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryChildItem>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/v1/product?category=${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryChildItem.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoryChils> getCategoryChildAllItem(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryChils>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/v1/product-variant?category=${id}&limit=1000',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryChils.fromJson(_result.data!);
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
