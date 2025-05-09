import 'package:auth_demo/services/end_points.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://mock-api.binaryboxtuts.com',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Binarybox-Api-Key':
            'binarybox_api_key_VzO8M31mfzUAW58MBuDkyVX68IWufWJWW7m5BqqSi3FSXHHwKeHjuXQzOC7QdACzffplQ93npFb6Q3sMQLeImXxkz3IHQDkWy1yt',
      },
    ),
  );

  Future<Response> registration(Map<String, String> requestBody) async {
    try {
      final response = await _dio.post(ApiEndpoints.register, data: requestBody);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> login(Map<String, String> requestBody) async {
    try {
      final response = await _dio.post(ApiEndpoints.login, data: requestBody);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
