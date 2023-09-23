import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';


class HttpClient {
  final Dio _dio;
  HttpClient({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<String>(
        endpoint,
        options: Options(
          headers: <String, dynamic>{
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
        queryParameters: queryParameters,
      );
      log(response.toString());
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
        endpoint,
        options: Options(
          headers: <String, dynamic>{
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
