import 'package:easy_localization/easy_localization.dart';

import '../constants/app.constants.dart';

extension StringLocalization on String {
  String get locale => this.tr();

  String? get isValidUsername => contains(RegExp(ApplicationConstants.USERNAME_REGEX)) ? null : 'Email does not valid';

  bool get isValidUsernames => RegExp(ApplicationConstants.USERNAME_REGEX).hasMatch(this);
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
}