import 'package:flutter/material.dart';
import '../../constants/enum/app.theme.enum.dart';
import 'app.theme.light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.theme;

  AppThemes _currentThemeEnum = AppThemes.LIGHT;

  /// Application theme enum.
  /// Default value is [AppThemes.LIGHT]
  AppThemes get currentThemeEnum => _currentThemeEnum;

  ThemeData get currentTheme => _currentTheme;

  void changeValue(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }

  /// Change your app theme with [currentThemeEnum] value.
  void changeTheme() {
    if (_currentThemeEnum == AppThemes.LIGHT) {
      _currentTheme = ThemeData.dark();
      _currentThemeEnum = AppThemes.DARK;
    } else {
      _currentTheme = AppThemeLight.theme;
      _currentThemeEnum = AppThemes.LIGHT;
    }
    notifyListeners();
  }
}
