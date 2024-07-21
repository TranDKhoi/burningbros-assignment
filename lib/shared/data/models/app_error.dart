import 'dart:io';

import 'package:bb_assignment/shared/data/models/base_error.dart';
import 'package:dio/dio.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
  unProcessableEntity,
  forbidden,
  notFound,
}

class AppError {
  late String message;
  late AppErrorType type;
  dynamic errors;
  List<ApiError> apiErrors = [];

  AppError(Exception? error) {
    if (error is DioException) {
      message = error.message ?? '';
      switch (error.type) {
        case DioExceptionType.unknown:
          if (error.error is SocketException) {
            // SocketException: Failed host lookup: '***'
            // (OS Error: No address associated with hostname, errno = 7)
            type = AppErrorType.network;
          } else {
            type = AppErrorType.unknown;
          }
          break;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          type = AppErrorType.timeout;
          break;
        case DioExceptionType.sendTimeout:
          type = AppErrorType.network;
          break;
        case DioExceptionType.badResponse:
          switch (error.response?.statusCode) {
            case HttpStatus.badRequest: // 400
              type = AppErrorType.badRequest;
              apiErrors = getApiErrors(error);
              break;
            case HttpStatus.unauthorized: // 401
              type = AppErrorType.unauthorized;
              message = createError(error) ?? message;
              break;
            case HttpStatus.forbidden: // 403
              type = AppErrorType.forbidden;
              break;
            case HttpStatus.unprocessableEntity: // 422
              type = AppErrorType.unProcessableEntity;
              apiErrors = getApiErrors(error);
              break;
            case HttpStatus.notFound: // 404
              type = AppErrorType.notFound;
              errors = error.response?.data["errors"];
              apiErrors = getApiErrors(error);
              break;
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = AppErrorType.server;
              break;
            default:
              type = AppErrorType.unknown;
              break;
          }
          break;
        case DioExceptionType.cancel:
          type = AppErrorType.cancel;
          break;
        default:
          type = AppErrorType.unknown;
      }
    } else {
      type = AppErrorType.unknown;
      message = 'AppError: $error';
    }
  }

  String? createError(DioException error) {
    final errorBody = error.response?.data;
    if (errorBody is Map<String, dynamic>) {
      final errors = errorBody["errors"];
      if (errors is Map<String, dynamic>) {
        final firstErr = errors.values.first;
        if (firstErr is List) {
          return firstErr.first.toString();
        }
      }
    }
    return null;
  }

  List<ApiError> getApiErrors(DioException error) {
    final errorJson = error.response?.data;
    final baseError = BaseError.fromJson(errorJson);
    return baseError.errors ?? [];
  }
}
