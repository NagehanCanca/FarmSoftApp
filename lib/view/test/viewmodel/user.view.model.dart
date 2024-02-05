import 'package:farm_soft/core/init/network/network.manager.dart';
import 'package:farm_soft/core/init/notifier/theme.notifier.dart';
import 'package:farm_soft/models/user.model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import '../../../core/base/model/base.view.model.dart';
import '../../../core/constants/enum/app.theme.enum.dart';

part 'user.view.model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
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

  void getSnmpleRequest() async {
    var isLoading = true;
    await NetworkManager.instance.dioGet<UserModel>("x", UserModel());
    isLoading = false;
  }
}
