import 'package:farm_soft/features/domain/usecase/user.usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/repository/provider.dart';

final userProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(userListProvider));
});

final usersListProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(userListProvider));
});

