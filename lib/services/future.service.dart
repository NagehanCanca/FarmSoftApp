import 'dart:html';
import 'package:dio/dio.dart';
import '../models/error.model.dart';
import 'i.future.service.dart';

class FutureService extends IFutureService {
  final dio = Dio();

  dynamic _getDioRequest(String path) async {
    final response = await dio.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        return response.data;
      default:
        return ErrorModel(response.statusMessage);
    }
  }

  @override
  Future<List<T>> get<T>(String path) async {
    // final response = await _getDioRequest(path);
    // if (response is List) {
    //   return response.map((e) => T.fromJson(e)).toList();
    // } else {
    //   throw response;
    // }
    throw UnimplementedError();
  }

  @override
  Future<List<T>> post<T>(String path) {
    // TODO: implement post
    throw UnimplementedError();
  }
}