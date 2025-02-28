import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../constants/api_constant.dart';
import '../utils/general_utility.dart';
import '../utils/logger.dart';
import 'app_exception.dart';
import 'network_interceptor.dart';

const successCodes = [200, 201, 203];

enum RequestType { get, post, put, patch, delete }

class DioClient {
  // dio instance
  final Dio _dio;

  // injecting dio instance
  DioClient(this._dio) {
    _dio
      ..options.baseUrl = ApiConstant.baseUrl
      ..options.connectTimeout = const Duration(seconds: 60)
      ..options.receiveTimeout = const Duration(seconds: 60)
      ..options.responseType = ResponseType.json
      ..interceptors.add(NetworkInterceptor())
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }
  // Get:-----------------------------------------------------------------------
  Future get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    return _makeRequest(RequestType.get, uri, {}, queryParameters, options);
  }

  // Post:----------------------------------------------------------------------
  Future post(
    String uri,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _makeRequest(RequestType.post, uri, data, queryParameters, options);
  }

  // Patch:----------------------------------------------------------------------
  Future patch(
    String uri,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _makeRequest(RequestType.patch, uri, data, queryParameters, options);
  }

  // Put:-----------------------------------------------------------------------
  Future put(
    String uri,
    Map<String, dynamic> data, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _makeRequest(RequestType.put, uri, data, queryParameters, options);
  }

  // Delete:--------------------------------------------------------------------
  Future delete(
    String uri,
    Map<String, dynamic> data, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _makeRequest(
        RequestType.delete, uri, data, queryParameters, options);
  }

  Future _makeRequest(RequestType type, String endpoint, dynamic data,
      Map<String, dynamic>? queryParameters, Options? options) async {
    try {
      late Response response;
      switch (type) {
        case RequestType.get:
          response = await _dio.get(endpoint,
              queryParameters: queryParameters, options: options);

          break;
        case RequestType.post:
          response = await _dio.post(endpoint, data: data, options: options);
          break;
        case RequestType.put:
          response = await _dio.put(endpoint, data: data, options: options);
          break;
        case RequestType.patch:
          response = await _dio.patch(endpoint, data: data, options: options);
          break;
        case RequestType.delete:
          response = await _dio.delete(endpoint, data: data, options: options);
        default:
          throw InvalidArgOrDataException();
      }
      if (successCodes.contains(response.statusCode)) {
        return response.data;
      }
      throw AppServerException(_handleException(response.data));
    } catch (e) {
      if (e is ServerException) {
        rethrow;
      }
      if (e is DioException) {
        if (e.response != null) {
          throw AppServerException(_handleException(e.response?.data));
        } else {
          if (e.error is SessionExpiredServerException) {
            throw SessionExpiredServerException();
          }
          if ((e.error as DioExceptionType) ==
                  DioExceptionType.connectionTimeout ||
              (e.error as DioExceptionType) ==
                  DioExceptionType.receiveTimeout) {
            throw TimeoutServerException();
          }
          if (e is FormatException) {
            throw InvalidArgOrDataException();
          }
        }
      }

      throw UnexpectedServerException();
    }
  }

  String _handleException(dynamic err) {
    if (kDebugMode) {
      logger.e(err.toString());
    }

    if (err != null) {
      if (err['message'] != null) {
        GeneralUtility.showToast(err['message'].toString());
      }
    }

    if (err != null) {
      if (err["detail"] != null) {
        if (err["detail"]["non_field_errors"] != null) {
          return err["detail"]["non_field_errors"][0]["message"].toString();
        }
      }
      if (err["detail"] != null) {
        if (err["detail"]["message"] != null) {
          return err["detail"]["message"].toString();
        }
      }
      if (err["errors"] != null) {
        return err["errors"][0]["detail"].toString();
      }
      if (err["message"] != null) {
        return err["message"].toString();
      }
      if (err["error"] != null) {
        return err["error"].toString();
      }
    }
    return "An unexpected error occurred:";
  }
}
