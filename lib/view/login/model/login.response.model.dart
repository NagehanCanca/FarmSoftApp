import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part "login.response.model.g.dart";

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {

  LoginResponseModel({this.token});
  final String? token;

  @override
  LoginResponseModel fromJson(Map<String, Object?> json) {
    return _$LoginResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}