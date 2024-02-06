import 'package:flutter/material.dart';

class AppThemeLight {
  static final AppThemeLight _instance = AppThemeLight._privateConstructor();

  factory AppThemeLight() {
    return _instance;
  }

  AppThemeLight._privateConstructor();

  static AppThemeLight get instance => _instance;

  static ThemeData get theme => _buildTheme(); // static olarak tanımlandı

  static ThemeData _buildTheme() {
    return ThemeData.light().copyWith(
      // Burada istediğiniz temel tema özelliklerini belirleyebilirsiniz
      // Örneğin:
      primaryColor: Colors.blue,
      // accentColor: Colors.green,
      // scaffoldBackgroundColor: Colors.white,
      // vs.
    );
  }
}
