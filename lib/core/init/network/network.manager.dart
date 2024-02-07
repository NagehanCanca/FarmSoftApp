import 'package:dio/dio.dart';
import 'package:vexana/vexana.dart';
import '../../constants/enum/locale.keys.enum.dart';
import '../cache/local.manager.dart';
import 'ICoreDio.dart';
import 'core.dio.dart';

class NetworkManager<T extends INetworkModel<dynamic>> {
  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: 'http://88.225.235.235:8081/api',
      headers: {'/User': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)},
    );

    coreDio = CoreDio(baseOptions);
  }

  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  ICoreDioNullSafety? coreDio;
}
