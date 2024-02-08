import 'dart:io';
import 'package:vexana/vexana.dart';
import '../../../models/error.model.dart';
import '../../base/model/base.error.dart';


class VexanaManager {

  VexanaManager._init();
  static VexanaManager? _instace;
  static VexanaManager get instance {
    if (_instace != null) return _instace!;
    _instace = VexanaManager._init();
    return _instace!;
  }

  NetworkManager networkManager =
  NetworkManager<BasicErrorModel>(isEnableLogger: true, errorModel: BasicErrorModel(), options: BaseOptions(baseUrl: 'http://88.225.235.235:8081/api/', headers:{ "X-Api-Key": "emre"}));

}