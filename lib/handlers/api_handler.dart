import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class ApiHandler {
  late final http.Client _client;
  final String baseUrl;
  final String authToken;
  final http.Client client;

  ApiHandler({required this.baseUrl, this.authToken = '', http.Client? client})
    : client = client ?? http.Client() {
    if (kIsWeb) {
      _client = http.Client();
    } else {
      var ioClient = HttpClient();
      ioClient.connectionTimeout = const Duration(seconds: 20);
      ioClient.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

      _client = IOClient(ioClient);
    }
  }

  Map<String, String> _getHeaders() {
    return {
      'Content-Type': 'application/json',
      if (authToken.isNotEmpty) 'Authorization': 'Bearer $authToken',
    };
  }

  Uri _buildUri(String endpoint, Map<String, dynamic>? queryParams) {
    String cleanBaseUrl = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';
    String cleanEndpoint = endpoint.startsWith('/')
        ? endpoint.substring(1)
        : endpoint;

    final fullUrl = '$cleanBaseUrl$cleanEndpoint';
    final uri = Uri.parse(fullUrl);

    if (queryParams != null && queryParams.isNotEmpty) {
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      return uri.replace(queryParameters: stringParams);
    }
    return uri;
  }

  void _logRequest(String method, Uri uri, {dynamic body}) {
    if (kDebugMode) {
      print('--> $method ${uri.toString()}');
      if (body != null) print('Body: $body');
    }
  }

  void _logResponse(http.Response response) {
    if (kDebugMode) {
      print('<-- ${response.statusCode} ${response.request?.url.toString()}');
      print('Response: ${response.body}');
    }
  }

  Future<List<T>> getList<T>(
    String endpoint, {
    required T Function(Map<String, dynamic>) fromJson,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = _buildUri(endpoint, queryParams);
      _logRequest('GET', uri);

      final response = await _client.get(uri, headers: _getHeaders());
      _logResponse(response);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final List<dynamic> dataList = jsonDecode(response.body);
        return dataList
            .map((item) => fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception("Server returned code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<T> get<T>(
    String endpoint, {
    required T Function(Map<String, dynamic>) fromJson,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final uri = _buildUri(endpoint, queryParameters);
      _logRequest('GET', uri);

      final response = await _client.get(uri, headers: _getHeaders());
      _logResponse(response);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Server returned code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<T> post<T>(
    String endpoint, {
    required dynamic data,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final uri = _buildUri(endpoint, null);
      final String encodedData = jsonEncode(data);
      _logRequest('POST', uri, body: encodedData);

      final response = await _client.post(
        uri,
        headers: _getHeaders(),
        body: encodedData,
      );
      _logResponse(response);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Server returned code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<dynamic> getRaw(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final uri = _buildUri(endpoint, queryParameters);
      _logRequest('GET', uri);

      final response = await _client.get(uri, headers: _getHeaders());
      _logResponse(response);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Server returned code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<(int? statusCode, String? message, T data)> postRaw<T>(
    String endpoint, {
    required dynamic data,
    required T Function(dynamic) fromJson,
  }) async {
    try {
      final uri = _buildUri(endpoint, null);
      final String encodedData = jsonEncode(data);
      _logRequest('POST', uri, body: encodedData);

      final response = await _client.post(
        uri,
        headers: _getHeaders(),
        body: encodedData,
      );
      _logResponse(response);

      final statusCode = response.statusCode;
      // http library doesn't parse status message strings natively, providing standard fallback
      final message = response.statusCode == 200 ? 'OK' : 'Error';

      final decodedData = jsonDecode(response.body);
      return (statusCode, message, fromJson(decodedData));
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<int>> postBytes(
    String endpoint, {
    required Map<String, dynamic> data,
  }) async {
    final response = await client.post(
      Uri.parse('$baseUrl$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return response.bodyBytes;
    }

    throw Exception('Request failed: ${response.statusCode}\n${response.body}');
  }
}
