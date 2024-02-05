import 'package:dio/dio.dart';

import '../core/constants/internet.service/dio.client.dart';
import '../models/user.model.dart';

class UserService {
  final DioClient _dioClient = DioClient.instance;


  Future<UserModel> login(String username, String password) async {
    try {
      final response = await _dioClient.post(
        '/User',
        queryParameters: {
          'username': username,
          'password': password,
        },
      );

      final user = UserModel.fromJson(response);
      return user;
      //final userList = (response["data"] as List).map((e) => User.fromJson(e)).toList();
      //return userList;


    } catch (e) {
      if (e is DioError) {
        throw e.message.toString();

      } else {
        throw e.toString();
      }
    }
  }
}