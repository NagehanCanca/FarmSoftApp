import 'dart:io';
import 'package:vexana/vexana.dart';

import '../../base/model/response.error.dart';

class VexanaManager {

  VexanaManager._init();
  static VexanaManager? _instace;
  static VexanaManager get instance {
    if (_instace != null) return _instace!;
    _instace = VexanaManager._init();
    return _instace!;
  }

  INetworkManager networkManager =
  NetworkManager<UserErrorModel>(isEnableLogger: true, errorModel: UserErrorModel(), options: BaseOptions(baseUrl: 'http://88.225.235.235:8081/api'));

}