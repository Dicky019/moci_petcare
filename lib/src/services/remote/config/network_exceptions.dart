import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  const factory NetworkExceptions.unProcessableEntity(
    Map<String, dynamic> errors,
  ) = UnProcessableEntity;

  /// [INFO]
  /// This function called in the catch in try...catch, and then get the error
  /// and stacktrace, then in this function, will detect, what Exceptions will
  /// be, and then assign it to the function that we create above.
  static NetworkExceptions getDioException(error, stackTrace) {
    /// [INFO]
    /// use for logging the error, quite helpful in debugging
    log(
      error.toString(),
      stackTrace: stackTrace,
      error: error,
      name: 'NETWORK EXCEPTION',
    );

    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              return const NetworkExceptions.requestCancelled();
            case DioExceptionType.receiveTimeout:
              return const NetworkExceptions.sendTimeout();
            case DioExceptionType.sendTimeout:
              return const NetworkExceptions.sendTimeout();
            case DioExceptionType.connectionTimeout:
              return const NetworkExceptions.requestTimeout();
            case DioExceptionType.unknown:
              return const NetworkExceptions.unexpectedError();

            case DioExceptionType.badResponse:
              switch (error.response?.statusCode) {
                case 400:
                case 401:
                case 403:
                  return NetworkExceptions.unauthorizedRequest(
                    '${error.response?.data['error']['message']}',
                  );
                case 404:
                  return NetworkExceptions.notFound(
                    "${error.response?.data['error']['message']}",
                  );
                case 408:
                  return const NetworkExceptions.requestTimeout();

                case 409:
                  return const NetworkExceptions.conflict();
                case 422:
                  return NetworkExceptions.unProcessableEntity(
                    error.response?.data['error']['errors'],
                  );
                case 500:
                  return const NetworkExceptions.internalServerError();
                case 503:
                  return const NetworkExceptions.serviceUnavailable();
                default:
                  return NetworkExceptions.defaultError(
                    "${error.response?.data['error']['message']}",
                  );
              }
            case DioExceptionType.badCertificate:
              return const NetworkExceptions.defaultError(
                "BadCertificate",
              );

            case DioExceptionType.connectionError:
              return const NetworkExceptions.defaultError(
                "ConnectionError",
              );
          }
        } else if (error is SocketException) {
          return const NetworkExceptions.noInternetConnection();
        } else {
          return const NetworkExceptions.unexpectedError();
        }
      } on FormatException {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions error) {
    return error.when(
      notImplemented: () {
        return "Not Implemented";
      },
      requestCancelled: () {
        return "Request Cancelled";
      },
      internalServerError: () {
        return "Internal Server Error";
      },
      notFound: (String reason) {
        return reason;
      },
      serviceUnavailable: () {
        return "Service unavailable";
      },
      methodNotAllowed: () {
        return "Method Not Allowed";
      },
      badRequest: () {
        return "Bad request";
      },
      unauthorizedRequest: (String reason) {
        /// [INFO] return message from API
        return reason;
      },
      unexpectedError: () {
        return "Unexpected error occurred";
      },
      requestTimeout: () {
        return "Connection request timeout";
      },
      noInternetConnection: () {
        return "No internet connection";
      },
      conflict: () {
        return "Error due to a conflict";
      },
      sendTimeout: () {
        return "Send timeout in connection with API server";
      },
      unableToProcess: () {
        return "Unable to process the data";
      },
      defaultError: (String error) {
        return error;
      },
      formatException: () {
        return "Unexpected error occurred";
      },
      notAcceptable: () {
        return "Not acceptable";
      },
      unProcessableEntity: (error) {
        return "Un Processable Entity";
      },
    );
  }

  static Map<String, dynamic> getErrors(NetworkExceptions exceptions) {
    return exceptions.maybeWhen(
      unProcessableEntity: (error) {
        return error;
      },
      orElse: () {
        return {};
      },
    );
  }

  static bool? getIsUnauthorizedRequest(NetworkExceptions error) {
    return error.whenOrNull(
      unauthorizedRequest: (reason) {
        return true;
      },
    );
  }
}
