import 'package:dio/dio.dart';

class AppException implements Exception {
  final String message;
  Response? response;

  AppException({required this.message, this.response});

  String getMessage() {
    return message;
  }
}

class ServerException extends AppException {
  ServerException({String? message})
      : super(message: message ?? "Server error");
}

class NotFoundException extends AppException {
  NotFoundException({String? message}) : super(message: message ?? "Not found");
}

class DataParsingException extends AppException {
  DataParsingException({String? message})
      : super(message: message ?? "Data has Corrupted");
}

class BadRequestException extends AppException {
  BadRequestException({String? message, Response? response})
      : super(message: message ?? "Bad request exception.", response: response);
}

class FetchDataException extends AppException {
  FetchDataException({String? message})
      : super(message: message ?? "Please check your connection...");
}

class UnauthorisedException extends AppException {
  UnauthorisedException({String? message})
      : super(message: message ?? "Token has been expired.");
}
