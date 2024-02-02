import '../../../models/user.dart';
import '../repository/user.repository.dart';

abstract class UserUseCase{
  Future<User> login(String username, String password);
  Future<List<User>> getUserList();
}

class UserUseCaseImpl extends UserUseCase{
  final UserRepository userRepository;

  UserUseCaseImpl(this.userRepository);

  @override
  Future<User> login(String username, String password) async {
    return await userRepository.login(username, password);
  }

  @override
  Future<List<User>> getUserList() async {
    return await userRepository.getUserList();
  }

}