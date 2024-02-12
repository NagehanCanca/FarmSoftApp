import 'package:json_annotation/json_annotation.dart';
import '../core/base/model/base.model.dart';
part 'animal.model.g.dart';

enum AnimalStatus { Normal, Ill, Ex, Sold }

AnimalStatus _$AnimalStatusFromJson(String status) {
  switch (status) {
    case 'Normal':
      return AnimalStatus.Normal;
    case 'Ill':
      return AnimalStatus.Ill;
    case 'Ex':
      return AnimalStatus.Ex;
    case 'Sold':
      return AnimalStatus.Sold;
    default:
      throw ArgumentError('Unknown AnimalStatus: $status');
  }
}

String _$AnimalStatusToJson(AnimalStatus status) {
  switch (status) {
    case AnimalStatus.Normal:
      return 'Normal';
    case AnimalStatus.Ill:
      return 'Ill';
    case AnimalStatus.Ex:
      return 'Ex';
    case AnimalStatus.Sold:
      return 'Sold';
    default:
      throw ArgumentError('Unknown AnimalStatus: $status');
  }
}

enum AnimalGender { Feminine, Masculine }

AnimalGender _$AnimalGenderFromJson(String gender) {
  switch (gender) {
    case 'Feminine':
      return AnimalGender.Feminine;
    case 'Masculine':
      return AnimalGender.Masculine;
    default:
      throw ArgumentError('Unknown AnimalGender: $gender');
  }
}

String _$AnimalGenderToJson(AnimalGender gender) {
  switch (gender) {
    case AnimalGender.Feminine:
      return 'Feminine';
    case AnimalGender.Masculine:
      return 'Masculine';
    default:
      throw ArgumentError('Unknown AnimalGender: $gender');
  }
}

@JsonSerializable()
class AnimalGridDto extends BaseModel {
  int id;
  AnimalStatus animalStatus;
  String rfid;
  String earringNumber;
  int animalTypeId;
  AnimalGender animalGender;
  DateTime birthDate;
  int paddockId;
  bool isInfectious;
  bool isTracking;
  String trackingUserId;
  String origin;
  DateTime farmInsertDate;
  int animalRaceId;
  DateTime exDate;
  String insertUser;
  DateTime? insertDate;
  String updateUser;
  DateTime? updateDate;

  AnimalGridDto({
    required this.id,
    required this.animalStatus,
    required this.rfid,
    required this.earringNumber,
    required this.animalTypeId,
    required this.animalGender,
    required this.birthDate,
    required this.paddockId,
    required this.isInfectious,
    required this.isTracking,
    required this.trackingUserId,
    required this.origin,
    required this.farmInsertDate,
    required this.animalRaceId,
    required this.exDate,
    required this.insertUser,
    this.insertDate,
    required this.updateUser,
    this.updateDate,
  });

  factory AnimalGridDto.fromJson(Map<String, dynamic> json) => _$AnimalGridDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AnimalGridDtoToJson(this);

  @override
  fromJson(Map<String, Object> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
