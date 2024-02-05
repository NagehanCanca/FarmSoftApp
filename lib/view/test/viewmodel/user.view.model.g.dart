// user.view.model.g.dart

// Bu dosya MobX tarafından otomatik olarak oluşturuldu.
// Lütfen manuel olarak değiştirmeyin.

part of 'user.view.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$numberAtom = Atom(name: '_UserViewModelBase.number');

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

  final _$_UserViewModelBaseActionController =
  ActionController(name: '_UserViewModelBase');

  @override
  void incrementNumber() {
    final _$actionInfo = _$_UserViewModelBaseActionController.startAction(
        name: '_UserViewModelBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_UserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return ''' 
    number: ${number}
    ''';
  }
}
