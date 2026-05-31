import 'package:dio/dio.dart' as dio; // ini pakai prefix karna nabrak varible response
import 'package:get/get.dart';

class ApiService {
  final dio.Dio dioClient = dio.Dio();

  ApiService() {
    dioClient.interceptors.add(
      dio.InterceptorsWrapper(
        onError: (dio.DioException e, handler) {
          final status = e.response?.statusCode;

          String message = "Terjadi kesalahan";

          if (status == 400) {
            message = "Bad Request";
          } else if (status == 401) {
            message = "Unauthorized";
          } else if (status == 404) {
            message = "Data tidak ditemukan";
          } else if (status == 500) {
            message = "Server error";
          }

          Get.snackbar(
            "Error",
            message,
            snackPosition: SnackPosition.BOTTOM,
          );

          return handler.next(e);
        },
      ),
    );
  }

  Future<dio.Response> get(String url) async {
    return await dioClient.get(url);
  }

  Future<dio.Response> post(String url, Map<String, dynamic> data) async {
    return await dioClient.post(url, data: data);
  }

  Future<dio.Response> put(String url, Map<String, dynamic> data) async {
    return await dioClient.put(url, data: data);
  }

  Future<dio.Response> delete(String url) async {
    return await dioClient.delete(url);
  }
}