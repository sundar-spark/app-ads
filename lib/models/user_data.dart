import 'package:json_annotation/json_annotation.dart';

part  'user_data.g.dart';

@JsonSerializable()
class UserData {

  final String name;
  final String howlCode;
  final String? dpNumber;
  final String?  emailId;
  final String? phoneNumber;
  final String? address;

  UserData({
    required this.name, 
    required this.howlCode, 
    this.dpNumber, 
    this.emailId, 
    this.phoneNumber, 
    this.address,}
   );

    factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
     Map<String, dynamic> toJson() => _$UserDataToJson(this);
}