import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../core/base/model/base.view.model.dart';
import '../../../core/constants/enum/app.theme.enum.dart';
import '../../../core/constants/enum/http.request.enum.dart';
import '../../../core/init/notifier/theme.notifier.dart';
import '../../../models/user.model.dart';

part 'user.view.model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase extends BaseViewModel with Store {
  void setContext(BuildContext context) => viewModelContext = context;
  void init () {}

  @observable
  int number = 0;

  @action
  void incrementNumber() {
    number++;
  }
  void changeTheme() {
    Provider.of<ThemeNotifier>(context as BuildContext, listen: false)
        .changeValue(AppThemes.DARK);
  }

  Future<void> getSampleRequest() async {
    var isLoading = true;

      final response = await coreDio?.send<List<UserModel>, UserModel>("x",
          type: HttpTypes.GET,parseModel: UserModel());
      if (response?.data is List<UserModel>){

      } else{
        response?.error;
      }
    isLoading = false;
  }
}
