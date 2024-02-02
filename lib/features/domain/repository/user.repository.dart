import '../../../models/user.dart';

abstract class UserRepository{
  Future<List<User>> getUserList();
  Future<User> login(String username, String password);
}