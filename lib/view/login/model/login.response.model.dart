import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part "login.response.model.g.dart";

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {

  int? id;
  int? insertUser;
  String? insertDate;
  int? updateUser;
  String? updateDate;
  String? username;
  String? email;
  String? password;
  String? firstName;
  String? lastName;

  LoginResponseModel(
      {this.id,
        this.insertUser,
        this.insertDate,
        this.updateUser,
        this.updateDate,
        this.username,
        this.email,
        this.password,
        this.firstName,
        this.lastName});

  @override
  LoginResponseModel fromJson(Map<String, Object?> json) {
    return _$LoginResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}