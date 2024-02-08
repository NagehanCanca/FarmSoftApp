import 'package:farm_soft/models/user.model.dart';
import 'package:vexana/vexana.dart';
import '../../../core/base/model/base.error.dart';
import '../../../models/error.model.dart';
import '../model/login.response.model.dart';

abstract class ILoginService {
  ILoginService(this.manager);
  final INetworkManager manager;

  Future<IResponseModel<LoginResponseModel?,BasicErrorModel?>> login(String username, String password);
}