import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoggingClient extends http.BaseClient {
  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Only log in Debug mode to save production performance
    if (kDebugMode) {
      debugPrint('========== REQUEST ==========');
      debugPrint('METHOD : ${request.method}');
      debugPrint('URL    : ${request.url}');
      debugPrint('HEADERS: ${request.headers}');
    }

    final response = await _client.send(request);

    if (kDebugMode) {
      debugPrint('========== RESPONSE ==========');
      debugPrint('STATUS : ${response.statusCode}');
    }

    final bytes = await response.stream.toBytes();
    
    if (kDebugMode) {
      try {
        final rawString = utf8.decode(bytes);
        // Attempt to pretty print if it's a JSON response
        final jsonObject = json.decode(rawString);
        final prettyJson = const JsonEncoder.withIndent('  ').convert(jsonObject);
        debugPrint('BODY   :\n$prettyJson');
      } catch (_) {
        // Fallback if payload isn't clear text or valid JSON
        debugPrint('BODY   : ${String.fromCharCodes(bytes)}');
      }
    }

    return http.StreamedResponse(
      Stream.value(bytes),
      response.statusCode,
      contentLength: response.contentLength,
      request: response.request,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }

  @override
  void close() {
    _client.close();
    super.close();
  }
}
