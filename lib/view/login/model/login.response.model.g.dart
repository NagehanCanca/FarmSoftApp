// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    lastName: json['lastname'] as String?,
    firstName: json['firstname'] as String?,
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'lastname': instance.lastName,
      'firstname': instance.firstName
    };
