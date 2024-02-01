import 'package:mobx/mobx.dart';

part 'test.view.model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  @observable
  int number = 0;

  @action
  void incrementNumber() {
    number++;
  }
}
