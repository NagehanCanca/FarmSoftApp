import 'package:dio/dio.dart';
import 'package:farm_soft/features/domain/repository/user.repository.dart';
import 'package:farm_soft/models/user.dart';
import '../../../core/constants/intenet.service/dio.client.dart';
import '../../../core/constants/intenet.service/paths.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> login(String username, String password) async {
    try {
      final response = await DioClient.instance.get(username);
      final user = (response["data"]).map((e) => User.fromJson(e)).toList();
      return user;
    }on DioError catch(e){
      var error = DioException.connectionError(requestOptions: RequestOptions(), reason: '');
      throw error;
    }
  }

  @override
  Future<List<User>> getUserList() async {
    try {
      final response = await DioClient.instance.get(users);
      final userList = (response["data"] as List).map((e) => User.fromJson(e)).toList();
      return userList;
    }on DioError catch(e){
      var error = DioException.connectionError(requestOptions: RequestOptions(), reason: '');
      throw error;
    }
  }

}