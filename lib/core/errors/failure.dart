import 'package:dio/dio.dart';

class Failure {
  final int status;
  final String message;

  Failure({this.status = 500, required this.message});
  factory Failure.dioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(message: 'Connection timed out');
      case DioExceptionType.sendTimeout:
        return Failure(message: 'Request timed out');
      case DioExceptionType.receiveTimeout:
        return Failure(message: 'Failed to receive data');
      case DioExceptionType.badCertificate:
        return Failure(message: 'Certificate is not trusted');
      case DioExceptionType.badResponse:
        return Failure(message: 'BadResponse Error');
      case DioExceptionType.cancel:
        return Failure(message: 'Request was cancelled');
      case DioExceptionType.connectionError:
        return Failure(message: 'Connection error');
      case DioExceptionType.unknown:
        return Failure(message: 'Unknown error');
    }
  }
}
