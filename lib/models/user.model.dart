import 'package:farm_soft/core/base/model/base.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class UserModel extends BaseModel {
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

  UserModel(
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

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  @override
  fromJson(Map<String, Object> json) {
    // TODO: implement fromJson
    return _$UserFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    // TODO: implement toJson
    return _$UserToJson(this);
  }
}