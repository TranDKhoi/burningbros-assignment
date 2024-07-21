import 'package:bb_assignment/configs/endpoints/endpoint.dart';
import 'package:bb_assignment/utils/logger/logger_util.dart';
import 'package:bb_assignment/utils/toast/toast_util.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: EndPoint.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequestInterceptor,
        onResponse: _onResponseInterceptor,
        onError: _onErrorInterceptor,
      ),
    );
  }

  Dio get dio => _dio;

  void _onRequestInterceptor(
    RequestOptions request,
    RequestInterceptorHandler handler,
  ) async {
    LogUtils.i(
      "[${request.method}] : "
      "\n${request.baseUrl}${request.path} "
      "\nQuery--> ${request.queryParameters} "
      "\nData --> ${request.data}",
    );
    handler.next(request);
  }

  void _onResponseInterceptor(
      Response response, ResponseInterceptorHandler handler) {
    LogUtils.d(
      "Response: \n${response.requestOptions.method} :"
      "\n${response.requestOptions.baseUrl}${response.requestOptions.path} "
      "\nRequest Data --> ${response.requestOptions.data}",
    );
    LogUtils.i(
      "Response interceptor: Base Url: ${response.requestOptions.baseUrl} "
      "\n-> Path: ${response.requestOptions.path} "
      "\n-> Request Header: ${response.requestOptions.headers} "
      "\n-> Query Params: ${response.requestOptions.queryParameters} "
      "\n-> Request Data: ${response.requestOptions.data} "
      "\n-> Status Code: ${response.statusCode} "
      "\n-> Response Data: ${response.data}",
    );

    handler.next(response);
  }

  void _onErrorInterceptor(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      LogUtils.e("Error interceptor: "
          "\nBase url: ${error.requestOptions.baseUrl} "
          "\n-> Path: ${error.requestOptions.path} "
          "\n-> Request Header: ${error.requestOptions.headers} "
          "\n-> Query params: ${error.requestOptions.queryParameters} "
          "\n-> Request Data: ${error.requestOptions.data}"
          "\n-> Error Data: ${error.response?.data.toString()} "
          "\n-> Error Status Code: ${error.response?.statusCode}"
          "\n-> Error Message: ${error.response?.statusMessage}");

      ///
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout) {
        LogUtils.e('Request Timeout: ${error.requestOptions.path}');

        ToastUtil.showToast("Timeout error!");
      }

      ///
      if (error.type == DioExceptionType.connectionError) {
        LogUtils.e('No internet connection: ${error.requestOptions.path}');

        ToastUtil.showToast("No internet connection!");
      }

      ///
      if (error.type == DioExceptionType.unknown) {
        LogUtils.e('Other Network Issue: ${error.requestOptions.path}');
        ToastUtil.showToast("${error.message}");
      }

      ///
      if (error.type == DioExceptionType.badResponse) {
        LogUtils.e("Response err intercept: "
            "\n${error.response!.data}"
            "\n--> ${error.requestOptions.path}");
        ToastUtil.showToast("${error.response?.statusMessage}");
      }
      handler.next(error);
    } catch (err) {
      handler.next(error);
    }
  }
}
