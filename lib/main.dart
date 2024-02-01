import 'package:easy_localization/easy_localization.dart';
import 'package:farm_soft/view/splash.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/init/navigation/navigation.route.dart';
import 'core/init/navigation/navigation.service.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: NavigationRoute.instance.generateRoute, // Eğer sadece bir tane observer varsa köşeli parantez içine alabilirsiniz.
    );
  }
}
