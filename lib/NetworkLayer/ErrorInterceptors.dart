import 'package:dio/dio.dart';

import 'BadRequestException.dart';
import 'ConflictException.dart';
import 'InternalServerErrorException.dart';
import 'NotFoundException.dart';
import 'UnauthorizedException.dart';

class ErrorInterceptors extends Interceptor {
  final Dio dio;

  ErrorInterceptors(this.dio);
@override
void onError(DioException err, ErrorInterceptorHandler handler) {
  // First, check for response status codes and throw corresponding custom exceptions.
  switch (err.response?.statusCode) {
    case 400:
      throw BadRequestException(err.requestOptions);
    case 401:
      throw UnauthorizedException(err.requestOptions);
    case 404:
      throw NotFoundException(err.requestOptions);
    case 409:
      throw ConflictException(err.requestOptions);
    case 500:
      throw InternalServerErrorException(err.requestOptions);
    default:
      // Handle other response status codes or error scenarios here.
      break;
  }

  // Next, check for specific Dio error types and throw corresponding custom exceptions.
  switch (err.type) {
    case DioException.connectionTimeout:
    case DioException.sendTimeout:
    case DioException.receiveTimeout:
      throw TimeOutException(err.requestOptions);
    case DioException.connectionTimeout:
      throw NoInternetConnectionException(err.requestOptions);
    default:
      // Handle other unknown error types here if necessary.
      break;
  }

  // Continue handling the error using the ErrorInterceptorHandler.
  return handler.next(err);
}
}