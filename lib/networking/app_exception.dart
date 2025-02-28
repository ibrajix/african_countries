abstract class AppException implements Exception {
  String get message;

  @override
  operator ==(other) {
    return other is AppException && message == other.message;
  }

  @override
  int get hashCode => message.hashCode;

  @override
  String toString() {
    return "AppException: $message";
  }
}

abstract class ServerException implements AppException {
  @override
  String toString() {
    return "$runtimeType: $message";
  }
}

class TimeoutServerException extends ServerException {
  final String msg;
  TimeoutServerException([this.msg = "connection timeout"]);

  @override
  String get message => msg;
}

class UnexpectedServerException extends ServerException {
  final String msg;

  UnexpectedServerException([this.msg = "An unexpected error occured"]);

  @override
  String get message => msg;
}

class UnknownServerException extends ServerException {
  @override
  String get message => "An unknown error occured";
}

class SessionExpiredServerException extends ServerException {
  @override
  String get message => "Session expired";
}

class AppServerException extends ServerException {
  final String msg;
  AppServerException([this.msg = "An unexpected error occured"]);

  @override
  String get message => msg;
}

class InvalidArgOrDataException extends AppException {
  final String msg;
  InvalidArgOrDataException([this.msg = "error in arguments or data"]);
  @override
  String get message => msg;
}

class CacheGetException extends AppException {
  CacheGetException();
  @override
  String get message => "error retrieving data from cache";
}

class CachePutException extends AppException {
  CachePutException();
  @override
  String get message => "error storing data to cache";
}
