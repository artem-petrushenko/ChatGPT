import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:chat_gpt/providers/api_exceptions.dart';

import 'package:chat_gpt/utils/constants/strings.dart';

class HttpClient {
  final dio = Dio();

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get<String>(
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
      throw const ApiExceptions(ApiExceptionsType.network);
    } on ApiExceptions {
      rethrow;
    } catch (_) {
      throw const ApiExceptions(ApiExceptionsType.other);
    }
  }

  Future<Map<String, dynamic>> post({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await dio.post<String>(
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
      throw const ApiExceptions(ApiExceptionsType.network);
    } on ApiExceptions {
      rethrow;
    } catch (_) {
      throw const ApiExceptions(ApiExceptionsType.other);
    }
  }

  void _checkStatusCode(Response<String> response) {
    switch (response.statusCode) {
      case 200:
        return;
      default:
        throw const ApiExceptions(ApiExceptionsType.other);
    }
  }
}
