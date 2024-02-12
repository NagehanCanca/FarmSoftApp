// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalGridDto _$AnimalGridDtoFromJson(Map<String, dynamic> json) {
  return AnimalGridDto(
    id: json['id'] as int,
    animalStatus: $enumDecode(_$AnimalStatusEnumMap, json['animalStatus']),
    rfid: json['rfid'] as String,
    earringNumber: json['earringNumber'] as String,
    animalTypeId: json['animalTypeId'] as int,
    animalGender: $enumDecode(_$AnimalGenderEnumMap, json['animalGender']),
    birthDate: DateTime.parse(json['birthDate'] as String),
    paddockId: json['paddockId'] as int,
    isInfectious: json['isInfectious'] as bool,
    isTracking: json['isTracking'] as bool,
    trackingUserId: json['trackingUserId'] as String,
    origin: json['origin'] as String,
    farmInsertDate: DateTime.parse(json['farmInsertDate'] as String),
    animalRaceId: json['animalRaceId'] as int,
    exDate: DateTime.parse(json['exDate'] as String),
    insertUser: json['insertUser'] as String,
    insertDate: json['insertDate'] == null
        ? null
        : DateTime.parse(json['insertDate'] as String),
    updateUser: json['updateUser'] as String,
    updateDate: json['updateDate'] == null
        ? null
        : DateTime.parse(json['updateDate'] as String),
  );
}

Map<String, dynamic> _$AnimalGridDtoToJson(AnimalGridDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'animalStatus': _$AnimalStatusEnumMap[instance.animalStatus],
      'rfid': instance.rfid,
      'earringNumber': instance.earringNumber,
      'animalTypeId': instance.animalTypeId,
      'animalGender': _$AnimalGenderEnumMap[instance.animalGender],
      'birthDate': instance.birthDate.toIso8601String(),
      'paddockId': instance.paddockId,
      'isInfectious': instance.isInfectious,
      'isTracking': instance.isTracking,
      'trackingUserId': instance.trackingUserId,
      'origin': instance.origin,
      'farmInsertDate': instance.farmInsertDate.toIso8601String(),
      'animalRaceId': instance.animalRaceId,
      'exDate': instance.exDate.toIso8601String(),
      'insertUser': instance.insertUser,
      'insertDate': instance.insertDate?.toIso8601String(),
      'updateUser': instance.updateUser,
      'updateDate': instance.updateDate?.toIso8601String(),
    };

const _$AnimalStatusEnumMap = {
  AnimalStatus.Normal: 'Normal',
  AnimalStatus.Ill: 'Ill',
  AnimalStatus.Ex: 'Ex',
  AnimalStatus.Sold: 'Sold',
};

const _$AnimalGenderEnumMap = {
  AnimalGender.Feminine: 'Feminine',
  AnimalGender.Masculine: 'Masculine',
};
