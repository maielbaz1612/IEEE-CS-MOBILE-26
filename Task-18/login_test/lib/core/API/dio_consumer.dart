import 'package:dio/dio.dart';
import 'package:login_test/core/API/api_consumer.dart';
import 'package:login_test/core/errors/error_model.dart';
import 'package:login_test/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer(this.dio);
  @override
  Future<dynamic> delete(String path, {Object? data, Map<String, dynamic>? queryParameters}) async{
    try {
      final response = await dio.delete(path,data: data,queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handlDioExceptions(e);
    }
  }


  @override
  Future<dynamic> get(String path, {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.delete(path,data: data,queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handlDioExceptions(e);
    }
  }

  @override
  Future<dynamic> patch(String path, {Object? data, Map<String, dynamic>? queryParameters}) async{
    try {
      final response = await dio.delete(path,data: data,queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handlDioExceptions(e);
    }
  }

  @override
  Future<dynamic> post(String path, {Object? data, Map<String, dynamic>? queryParameters}) async{
    try {
      final response = await dio.delete(path,data: data,queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handlDioExceptions(e);
    }
  }
}