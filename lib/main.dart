import 'package:easy_localization/easy_localization.dart';
import 'package:farm_soft/core/init/cache/local.manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'core/init/navigation/navigation.route.dart';
import 'core/init/navigation/navigation.service.dart';
import 'core/init/notifier/provider.list.dart';

void main() {
  LocaleManager.prefrencesInit();
  runApp(MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: EasyLocalization(
          child: App(),
        path: '',
        supportedLocales: [],
      ),
  ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      //localizationsDelegates: context.localizationDelegates,
      //supportedLocales: context.supportedLocales,
      //locale: context.locale,
      onGenerateRoute: NavigationRoute.instance.generateRoute, // Eğer sadece bir tane observer varsa köşeli parantez içine alabiliriz..
    );
  }
}
