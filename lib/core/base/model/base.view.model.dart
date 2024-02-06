import 'package:flutter/material.dart';
import '../../init/cache/local.manager.dart';
import '../../init/navigation/navigation.service.dart';
import '../../init/network/ICoreDio.dart';
import '../../init/network/network.manager.dart';

abstract class BaseViewModel {
  late BuildContext viewModelContext;

  ICoreDioNullSafety? coreDio = NetworkManager.instance!.coreDio;
  // VexanaManager? vexanaManager = VexanaManager.instance;
  //
  // VexanaManager get vexanaManagerComputed => VexanaManager.instance;
  //
  // LocaleManager localeManager = LocaleManager.instance;
  // NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}