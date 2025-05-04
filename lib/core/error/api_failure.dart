import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
}

extension BeFailureExt on ApiFailure {
  String get failureMessage {
    switch (this) {
      case _Other():
        (message) => message.toString();
      case _ServerError():
        (message) => message.toString();
      case _PoorConnection():
        (a) => 'Poor Internet connection';
      case _ServerTimeout():
        (a) => 'Server time out';
      default:
        (a) => 'Unknown Error';
    }
    return 'Unknown Error';
  }
}
