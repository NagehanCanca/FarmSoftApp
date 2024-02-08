import 'package:vexana/vexana.dart';

class BasicErrorModel extends INetworkModel<BasicErrorModel> {
  int? statusCode;
  String? decription;

  BasicErrorModel({this.statusCode, this.decription});

  BasicErrorModel.fromJson(Map<String, dynamic>? json) {
    statusCode = json!['statusCode'] as int?;
    decription = json['decription'] as String?;
  }

  @override
  Map<String, Object> toJson() {
    final data = <String, Object>{};
    data['statusCode'] = statusCode ?? '';
    data['decription'] = decription ?? '';
    return data;
  }

  @override
  BasicErrorModel fromJson(Map<String, dynamic>? json) => BasicErrorModel.fromJson(json);
}