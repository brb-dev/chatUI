import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

import 'api_failure.dart';
import 'exception.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    switch (error.runtimeType) {
      case const (MockException):
        return ApiFailure.other((error as MockException).message);
      case const (CacheException):
        return ApiFailure.other((error as CacheException).message);
      case const (ServerException):
        final message = (error as ServerException).message;
        return ApiFailure.serverError(message);
      case const (SocketException):
        return const ApiFailure.poorConnection();
      case const (TimeoutException):
        return const ApiFailure.serverTimeout();
      case const (PlatformException):
        return ApiFailure.other('${(error as PlatformException).message}');
      case const (OtherException):
        return ApiFailure.other((error as OtherException).message);

      default:
        return ApiFailure.other(error.toString());
    }
  }
}
