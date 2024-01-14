import 'package:dio/dio.dart';
import 'package:flutter_offline_cart_bloc/network/failure.dart';

class ErrorHandler implements Exception {
  late int code;
  late String message;

  ErrorHandler(dynamic error) {
    if (error is DioException) {
      code = error.response?.statusCode ?? -1;
      message = error.message ?? "";
    } else {
      code = -1;
      message = error.toString();
    }
  }

  Failure getFailure() {
    return Failure(code, message);
  }
}
