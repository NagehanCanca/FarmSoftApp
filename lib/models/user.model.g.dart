// user.g.dart

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserFromJson(Map<String, dynamic> json) {
  return UserModel(
    id: json['id'] as int?,
    insertUser: json['insertUser'] as int?,
    insertDate: json['insertDate'] as String?,
    updateUser: json['updateUser'] as int?,
    updateDate: json['updateDate'] as String?,
    username: json['username'] as String?,
    email: json['email'] as String?,
    password: json['password'] as String?,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'insertUser': instance.insertUser,
  'insertDate': instance.insertDate,
  'updateUser': instance.updateUser,
  'updateDate': instance.updateDate,
  'username': instance.username,
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
};
