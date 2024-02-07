import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.model.g.dart';

@JsonSerializable()
class LoginModel extends INetworkModel<LoginModel> {

  LoginModel({this.username, this.password});
  final String? username;
  final String? password;

  @override
  LoginModel fromJson(Map<String, Object?> json) {
    return _$LoginModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$LoginModelToJson(this);
  }
}