import 'package:farm_soft/models/error.model.dart';
import 'package:vexana/vexana.dart';
import '../../product/enum/network.route.enum.dart';
import '../model/login.response.model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(INetworkManager manager) : super(manager);

  @override
  Future<IResponseModel<LoginResponseModel?,BasicErrorModel?>> login(String username, String password) async {
    final  response = await manager.send(
      '${NetworkRoutes.LOGIN.rawValue}?username=${username}&password=${password}',
      parseModel: LoginResponseModel(),
      method: RequestType.POST,
    );
      if(response.data is LoginResponseModel) {
        return response.data;
      }
        return response.data;

  }
}