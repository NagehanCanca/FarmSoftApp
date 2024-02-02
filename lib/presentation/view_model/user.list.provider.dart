
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/domain/usecase/provider.dart';
import '../../models/user.dart';

class UserListProvider extends ChangeNotifier{
  final ChangeNotifierProviderRef ref;
  List<User>list = [];
  bool haveData = false;

  UserListProvider({required this.ref});

  Future<void>init()async{
    list = await ref.watch(usersListProvider).getUserList();
    haveData = true;
    notifyListeners();
  }
}

final getUsersProvider = ChangeNotifierProvider<UserListProvider>((ref) => UserListProvider(ref: ref));