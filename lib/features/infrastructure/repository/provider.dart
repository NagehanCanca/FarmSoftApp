import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repository/user.repository.dart';
import '../../domain/repository/user.repository.implementation.dart';

final userListProvider = Provider<UserRepository>((ref){
  return UserRepositoryImpl();
});

final newUserProvider = Provider<UserRepository>((ref){
  return UserRepositoryImpl();
});

final updateUserProvider = Provider<UserRepository>((ref){
  return UserRepositoryImpl();
});

final deleteUserProvider = Provider<UserRepository>((ref){
  return UserRepositoryImpl();
});