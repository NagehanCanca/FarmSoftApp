import 'package:vexana/vexana.dart';

import '../../product/enum/network.route.enum.dart';
import '../model/login.model.dart';
import '../model/login.response.model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(INetworkManager manager) : super(manager);

  @override
  Future<LoginResponseModel?> fetchUserControl(LoginModel model) async {
    final response = await manager.send<LoginResponseModel, LoginResponseModel>(
      NetworkRoutes.LOGIN.rawValue,
      parseModel: LoginResponseModel(),
      method: RequestType.POST,
      data: model,
    );

    if (response.data is LoginResponseModel) {
      return response.data;
    } else {
      return null;
    }
  }
}