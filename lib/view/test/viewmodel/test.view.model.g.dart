// test.view.model.g.dart

// Bu dosya MobX tarafından otomatik olarak oluşturuldu.
// Lütfen manuel olarak değiştirmeyin.

part of 'test.view.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

mixin _$TestViewModel on _TestViewModelBase, Store {
  final _$numberAtom = Atom(name: '_TestViewModelBase.number');

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$_TestViewModelBaseActionController =
  ActionController(name: '_TestViewModelBase');

  @override
  void incrementNumber() {
    final _$actionInfo = _$_TestViewModelBaseActionController.startAction(
        name: '_TestViewModelBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_TestViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return ''' 
    number: ${number}
    ''';
  }
}
