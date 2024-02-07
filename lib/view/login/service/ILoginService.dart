import 'package:vexana/vexana.dart';

import '../model/login.model.dart';
import '../model/login.response.model.dart';

abstract class ILoginService {
  ILoginService(this.manager);
  final INetworkManager manager;

  Future<LoginResponseModel?> fetchUserControl(LoginModel model);
}