import 'package:dio/dio.dart';
import '../../constants/enum/locale.keys.enum.dart';
import '../cache/local.manager.dart';
import 'ICoreDio.dart';
import 'core.dio.dart';

class NetworkManager {
  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: 'http://88.225.235.235:8081/api',
      headers: {'/User': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)},
    );
    // _dio = Dio(baseOptions);

    coreDio = CoreDio(baseOptions);

    // _dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options) {
    //     options.path += "aa";
    //   },
    //   onError: (e) {
    //     return BaseError(e.message);
    //   },
    // ));
  }
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  ICoreDioNullSafety? coreDio;
}