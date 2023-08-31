import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

extension DioProxy on Dio {
  void useProxy() {
    if (const bool.fromEnvironment('dart.library.js_util')) return;

    const String proxyUrl =
        String.fromEnvironment('HTTP_PROXY', defaultValue: '');
    if (proxyUrl.isEmpty) return;
    switch (httpClientAdapter) {
      case IOHttpClientAdapter adapter:
        adapter.createHttpClient = () => HttpClient()
          ..idleTimeout = const Duration(seconds: 3)
          ..findProxy = (url) {
            print(proxyUrl);
            return 'PROXY $proxyUrl';
          }
          ..badCertificateCallback = (cert, host, post) => true;
      default:
        throw UnsupportedError(
            'Cannot use proxy with ${httpClientAdapter.runtimeType}');
    }
  }
}
