import 'package:bb_assignment/shared/data/models/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_handler.freezed.dart';

@freezed
@optionalTypeArgs
class ResponseHandler<T> with _$ResponseHandler<T> {
  const ResponseHandler._();

  const factory ResponseHandler.success({required T data}) = Success<T>;

  const factory ResponseHandler.failure({required AppError error}) = Failure<T>;

  static ResponseHandler<T> guard<T>(T Function() body) {
    try {
      return ResponseHandler.success(data: body());
    } on Exception catch (e) {
      return ResponseHandler.failure(error: AppError(e));
    }
  }

  static Future<ResponseHandler<T>> guardFuture<T>(Future<T> Function() future) async {
    try {
      return ResponseHandler.success(data: await future());
    } on Exception catch (e) {
      return ResponseHandler.failure(error: AppError(e));
    }
  }

  bool get isSuccess => when(success: (data) => true, failure: (e) => false);

  bool get isFailure => !isSuccess;

  void ifSuccess(Function(T data) body) {
    maybeWhen(
      success: (data) => body(data),
      orElse: () {
        // no-op
      },
    );
  }

  void ifFailure(Function(AppError e) body) {
    maybeWhen(
      failure: (e) => body(e),
      orElse: () {
        // no-op
      },
    );
  }

  T get dataOrThrow {
    return when(
      success: (data) => data,
      failure: (e) => throw e,
    );
  }

}
