import 'package:farm_soft/view/start.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/model/base.view.model.dart';
import '../../../core/constants/enum/locale.keys.enum.dart';
import '../../../core/init/network/vexana.manager.dart';
import '../service/ILoginService.dart';
import '../service/login.service.dart';

part 'login.view.model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase extends BaseViewModel with Store {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  late ILoginService loginService;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    loginService = LoginService(VexanaManager.instance.networkManager);
  }

  @observable
  bool isLoading = false;

  @observable
  bool isLockOpen = false;

  @action
  Future<void> fetchLoginService() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await loginService.login(usernameController.text,passwordController.text,
      );
      isLoadingChange();
      if (response != null) {
        if (scaffoldState.currentContext != null) {
          ScaffoldMessenger.of(scaffoldState.currentContext!).showSnackBar(
            const SnackBar(
              content: Text('Giriş yapıldı.'),
            ),
          );
        }

        Get.to(() => StartPage());
       /// sayfa yönlendirmesi
        ///
      }
      else {
        if (scaffoldState.currentContext != null) {
          ScaffoldMessenger.of(scaffoldState.currentContext!).showSnackBar(
            const SnackBar(
              content: Text('Giriş hatası.'),
            ),
          );
        }
      }
    }
  }

  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
  }

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  @action
  void isLockStateChange() {
    isLockOpen = !isLockOpen;
  }
}