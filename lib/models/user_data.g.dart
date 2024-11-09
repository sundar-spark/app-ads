// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      name: json['name'] as String,
      howlCode: json['howlCode'] as String,
      dpNumber: json['dpNumber'] as String?,
      emailId: json['emailId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'name': instance.name,
      'howlCode': instance.howlCode,
      'dpNumber': instance.dpNumber,
      'emailId': instance.emailId,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
