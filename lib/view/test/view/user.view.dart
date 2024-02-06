import 'package:farm_soft/core/base/view/base.widget.dart';
import 'package:farm_soft/core/constants/enum/locale.keys.enum.dart';
import 'package:farm_soft/core/init/cache/local.manager.dart';
import 'package:farm_soft/view/test/viewmodel/user.view.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/base/state/base.state.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends BaseState<UserView> {
  late UserViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
        viewModel: UserViewModel(),
        onPageBuilder: (context, value) => Text("data"),
      onModelReady: (model) {
          viewModel = model;
      },
      onDispose: () {
      },
    );
  }
  Widget get scaffoldBody => Scaffold(
    appBar: AppBar(
      leading: Text(
        LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
      ),
    ),
    floatingActionButton: floatingActionButtonNumberIncrement,
      body: textNumber,
  );
  FloatingActionButton get floatingActionButtonNumberIncrement {
    return FloatingActionButton(
      onPressed: () => viewModel.incrementNumber(),
    );
  }

  Widget get textNumber {
    return Observer(
      builder: (context) => Text(
        viewModel.number.toString(),
      ),
    );
  }
}
