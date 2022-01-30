import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'index.dart';

typedef JsonMap = Map<String, dynamic>;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class APIClient {
  final Dio dioClient;
  const APIClient({
    required this.dioClient,
  });
  factory APIClient.init() {
    final client = Dio(
      BaseOptions(
        baseUrl: Const.apiUrl,
        connectTimeout: Const.connectionTimeout,
        receiveTimeout: Const.connectionTimeout,
      ),
    );
    HttpOverrides.global = MyHttpOverrides();
    return APIClient(dioClient: client);
  }

  Future generatePostRequest(
    String urlPath, {
    required JsonMap body,
  }) async {
    _logAPIRequestData(urlPath, body);
    late Response response;
    print(body);
    try {
      response = await dioClient.post(
        urlPath,
        options: Options(
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
        data: body,
      );
    } catch (e) {
      String statusMessage;
      int statusCode;
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout) {
          statusMessage = "Request Timeout";
          statusCode = 408;
        } else if (e.error == DioErrorType.receiveTimeout) {
          statusMessage = "No data received";
          statusCode = 408;
        } else {
          statusMessage = e.message;
          statusCode = 0;
        }
        response = Response(
          statusMessage: statusMessage,
          statusCode: statusCode,
          requestOptions: RequestOptions(path: urlPath),
        );
      } else {
        response = Response(
          statusMessage: e.toString(),
          requestOptions: RequestOptions(path: urlPath),
        );
      }
    }
    final statusCode = response.statusCode ?? 0;
    if (statusCode != 200) {
      final statusMessage = response.statusMessage ?? "Something went wrong";
      debugPrint("---- Error $urlPath");
      debugPrint("Status Code $statusCode");
      debugPrint("Status Message $statusMessage");
      debugPrint("---- End Error");

      throw ApiException(message: statusMessage);
    }
    final responseJson = response.data;
    debugPrint("---- Response $urlPath");
    debugPrint(responseJson.toString());
    debugPrint("---- End Response");

    return responseJson;
  }

  /// Generate HTTP Request using DIO.
  ///
  /// Checks for API Status and throws [APIException].
  Future generateGetRequest(
    String urlPath, {
    bool toastOnError = true,
  }) async {
    _logAPIRequestData(urlPath, {});

    late Response response;
    try {
      response = await dioClient.get('/$urlPath');
    } catch (e) {
      String statusMessage;
      int statusCode;
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout) {
          statusMessage = "Request Timeout";
          statusCode = 408;
        } else if (e.error == DioErrorType.receiveTimeout) {
          statusMessage = "No data received";
          statusCode = 408;
        } else {
          statusMessage = e.message;
          statusCode = 0;
        }
        response = Response(
          statusMessage: statusMessage,
          statusCode: statusCode,
          requestOptions: RequestOptions(path: urlPath),
        );
      } else {
        response = Response(
          statusMessage: e.toString(),
          requestOptions: RequestOptions(path: urlPath),
        );
      }
    }
    final statusCode = response.statusCode ?? 0;
    if (statusCode != 200) {
      final statusMessage = response.statusMessage ?? "Something went wrong";
      debugPrint("---- Error $urlPath");
      debugPrint("Status Code $statusCode");
      debugPrint("Status Message $statusMessage");
      debugPrint("---- End Error");

      throw ApiException(message: statusMessage);
    }
    final responseJson = response.data;
    debugPrint("---- Response $urlPath");
    debugPrint(responseJson.toString());
    debugPrint("---- End Response");

    return responseJson;
  }

  void _logAPIRequestData(
    String url,
    Map<String, dynamic> body,
  ) {
    debugPrint("---- Request $url");

    for (final map in body.entries) {
      debugPrint('${map.key} : ${map.value}');
    }

    debugPrint("---- End Request");
  }
}

class ApiException implements Exception {
  final String message;
  final dynamic response;
  ApiException({required this.message, this.response});

  @override
  String toString() => message;
}
