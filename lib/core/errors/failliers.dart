import 'package:dio/dio.dart';

abstract class Faillier {}

class ServerFaillier implements Faillier {
  final String message;
  ServerFaillier(this.message);

  factory ServerFaillier.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaillier("Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFaillier("Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFaillier("Receive Timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFaillier("Bad Certificate with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFaillier.fromServerError(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.connectionError:
        return ServerFaillier("No Internet Connection");
      case DioExceptionType.cancel:
        return ServerFaillier("Request to ApiServer was cancelled");
      case DioExceptionType.unknown:
        return ServerFaillier("Unexpected Error,Please try later");
    }
  }

  factory ServerFaillier.fromServerError(int statusCode, Map response) {
    switch (statusCode) {
      case 500:
        return ServerFaillier("Internal server error");
      case 400:
        return ServerFaillier("Internal server error");
      case 404:
        return ServerFaillier("Your request not found,Please try later");
      case 401:
        return ServerFaillier(response["error"]["messege"]);
      case 403:
        return ServerFaillier(response["error"]["messege"]);
      default:
        return ServerFaillier("Opps There was an Error,Please try later");
    }
  }
}

class CacheFaillier implements Faillier {}

class OfflineFaillier implements Faillier {}

class NetworkFaillier implements Faillier {}
