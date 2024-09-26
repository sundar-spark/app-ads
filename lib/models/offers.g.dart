// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Offers _$OffersFromJson(Map<String, dynamic> json) => Offers(
      couponName: json['couponName'] as String,
      logoUrl: json['logoUrl'] as String?,
      shopName: json['shopName'] as String,
      termsAndConditions: json['termsAndCondtions'] as String,
      validTill: DateTime.parse(json['validTill'] as String),
      couponDetails: json['couponDetails'] as String,
    );

Map<String, dynamic> _$OffersToJson(Offers instance) => <String, dynamic>{
      'couponDetails': instance.couponDetails,
      'couponName': instance.couponName,
      'logoUrl': instance.logoUrl,
      'shopName': instance.shopName,
      'termsAndCondtions': instance.termsAndConditions,
      'validTill': instance.validTill.toIso8601String(),
    };
