import 'package:flutter/material.dart';
import '../../../view/splash.view.dart';
import 'package:flutter/widgets.dart';

import '../../base/widget/not.found.navigation.dart';
import '../../constants/navigation/navigation.constants.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const SplashView(), NavigationConstants.DEFAULT);

      // case NavigationConstants.SETTINGS_WEB_VIEW:
      //   if (args.arguments is SettingsDynamicModel) {
      //     return normalNavigate(
      //       SettingsDynamicView(model: args.arguments as SettingsDynamicModel),
      //       NavigationConstants.SETTINGS_WEB_VIEW,
      //     );
      //   }
      //   throw NavigateException<SettingsDynamicModel>(args.arguments);

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      //analytciste görülecek olan sayfa ismi için pageName veriyoruz
      settings: RouteSettings(name: pageName),
    );
  }
}