import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:chat_gpt/src/utils/constants/strings.dart';

class HttpClient {
  // const HttpClient({required Dio dio}) : _dio = dio;
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<String>(
        '$host$endpoint',
        options: Options(
          headers: <String, dynamic>{
            HttpHeaders.authorizationHeader: "Bearer $apiKey",
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
        queryParameters: queryParameters,
      );
      _checkStatusCode(response);
      return jsonDecode(response.data ?? '') as Map<String, dynamic>;
    } on SocketException {
      throw const SocketException('Socket Exception');
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Map<String, dynamic>> post({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.post<String>(
        '$host$endpoint',
        options: Options(
          headers: <String, dynamic>{
            HttpHeaders.authorizationHeader: "Bearer $apiKey",
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
        data: jsonEncode(body),
        queryParameters: queryParameters,
      );
      _checkStatusCode(response);
      return jsonDecode(response.data ?? '') as Map<String, dynamic>;
    } on SocketException {
      throw const SocketException('Socket Exception');
    } catch (e) {
      throw Exception(e);
    }
  }

  void _checkStatusCode(Response<String> response) {
    switch (response.statusCode) {
      case 200:
        return;
      default:
        throw Exception('Other Exception');
    }
  }
}
