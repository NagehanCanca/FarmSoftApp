import 'package:easy_localization/easy_localization.dart';
import 'package:farm_soft/core/extension/context.extentions.dart';
import 'package:flutter/material.dart';
import '../../../core/base/view/base.widget.dart';
import '../../../core/constants/enum/image/image.constant.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/init/lang/locale.keys.g.dart';
import '../../../models/user.model.dart';
import '../viewmodel/login.view.model.dart';

class LoginView extends StatelessWidget {
  late final UserModel _loggedUser;
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel value) => DefaultTabController(
        length: 2,
        child: Scaffold(
          key: value.scaffoldState,
          body: SafeArea(
            child: Column(
              children: [
                buildAnimatedContainer(context),
                buildContainerTabBar(context),
                Expanded(flex: 6, child: Padding(padding: context.paddingNormal, child: buildForm(value, context))),
              ],
            ),
          ),
        ),
      ), onDispose: () {  },
    );
  }

  AnimatedContainer buildAnimatedContainer(BuildContext context) {
    return AnimatedContainer(
      duration: context.lowDuration,
      height: context.mediaQuery.viewInsets.bottom > 0 ? 0 : context.height * 0.3,
      color: Colors.white,
      child: Center(child: Image.asset(ImageConstants.instance.logo)),
    );
  }

  Container buildContainerTabBar(BuildContext context) {
    return Container(
      decoration:
      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
      child: Padding(
        padding: EdgeInsets.only(left: context.width * 0.1, right: context.width * 0.1, bottom: context.width * 0.01),
        child: buildTabBar(context),
      ),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
      labelStyle: context.textTheme.headline5,
      unselectedLabelStyle: context.textTheme.headline5,
      labelColor: Colors.black,
      indicatorColor: Colors.blue,
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(text: '   ${LocaleKeys.login_tab1.tr()}   '),
        Tab(text: LocaleKeys.login_tab2.tr()),
      ],
    );
  }

  Form buildForm(LoginViewModel value, BuildContext context) {
    return Form(
      key: value.formState,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          const Spacer(flex: 6),
          buildTextFormFieldUsername(context, value),
          buildTextFormFieldPassword(context, value),
          const Spacer(),
          buildTextForgot(),
          const Spacer(flex: 6),
          buildRaisedButtonLogin(context, value),
          buildWrapForgot(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildTextFormFieldPassword(BuildContext context, LoginViewModel viewModel) {
    return Observer(
      builder: (_) {
        return TextFormField(
          controller: viewModel.passwordController,
          validator: (value) => value!.isNotEmpty ? null : 'This field required',
          obscureText: viewModel.isLockOpen,
          decoration: InputDecoration(
            labelStyle: context.textTheme.subtitle1,
            labelText: LocaleKeys.login_password.tr(),
            icon: buildContainerIconField(context, Icons.vpn_key),
            suffixIcon: IconButton(
              onPressed: () {
                viewModel.isLockStateChange();
              },
              padding: EdgeInsets.zero,
              icon: Observer(
                builder: (_) {
                  return Icon(viewModel.isLockOpen ? Icons.lock : Icons.lock_open);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  TextFormField buildTextFormFieldUsername(BuildContext context, LoginViewModel viewModel) {
    return TextFormField(
      controller: viewModel.usernameController,
      validator: (value) => value!.isEmpty ? 'This field required' : null,
      decoration: InputDecoration(
        labelText: LocaleKeys.login_username.tr(),
        labelStyle: context.textTheme.subtitle1,
        icon: buildContainerIconField(context, Icons.person),
      ),
    );
  }

  Container buildContainerIconField(BuildContext context, IconData icon) {
    return Container(
      color: context.colors.onError,
      padding: context.paddingLow,
      child: Icon(icon, color: context.colors.primaryContainer),
    );
  }

  Widget buildTextForgot() => Align(
    alignment: Alignment.centerRight,
    child: const Text(LocaleKeys.login_forgotText, textAlign: TextAlign.end).tr(),
  );

  Widget buildRaisedButtonLogin(BuildContext context, LoginViewModel viewModel) {
    return Observer(
      builder: (_) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: context.paddingNormal,
            shape: const StadiumBorder(),
            backgroundColor: context.colors.onError,
          ),
          onPressed: viewModel.isLoading
              ? null
              : () {
            viewModel.fetchLoginService();
          },
          child: Center(
            child: Text(
              LocaleKeys.login_login.tr(),
              style: context.textTheme.headline5,
            ),
          ),
        );
      },
    );
  }

  Wrap buildWrapForgot() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(LocaleKeys.login_dontAccount.tr()),
        TextButton(onPressed: () {}, child: Text(LocaleKeys.login_tab2.tr()))
      ],
    );
  }
}