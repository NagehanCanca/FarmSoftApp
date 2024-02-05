import 'package:farm_soft/core/init/theme/padding.insets.dart';
import 'package:farm_soft/core/init/theme/text.theme.light.dart';

import 'color.scheme.dart';

abstract class ILightTheme {
  TextThemeLight? textThemeLight = TextThemeLight.instance;
  ColorSchemeLight? colorSchemeLight = ColorSchemeLight.instance;
  PaddingInsets insets = PaddingInsets();
}