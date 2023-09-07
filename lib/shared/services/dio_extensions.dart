import 'package:dio/dio.dart';
import 'package:taht/shared/services/base_service.dart';

extension DioExtensions on BaseService {
  void setToken(Dio dio, String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void clearToken(Dio dio) {
    dio.options.headers.remove('Authorization');
  }
}
