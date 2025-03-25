import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = "https://www.googleapis.com/books/v1";
  final Dio dio;
  ApiService(this.dio);
  Future<Response> get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response;
  }
}
