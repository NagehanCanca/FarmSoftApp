import 'package:farm_soft/core/base/view/base.widget.dart';
import 'package:farm_soft/view/test/viewmodel/test.view.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/base/state/base.state.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onPageBuilder: (context, value) => Text("data"),
      onModelReady: (model) {
          viewModel = model;
      },
      onDispose: () {
      },
    );
  }
  Widget get scaffoldBody => Scaffold(
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
