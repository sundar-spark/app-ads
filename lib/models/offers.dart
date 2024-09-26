import 'package:json_annotation/json_annotation.dart';

part  'offers.g.dart';

@JsonSerializable()
class Offers {

  final String couponDetails;
  final String couponName;
  final String? logoUrl;
  final String shopName;
  @JsonKey(name: 'termsAndCondtions')
  final String termsAndConditions;
  final DateTime validTill;

  Offers({
    required this.couponName, 
     this.logoUrl, 
    required this.shopName, 
    required this.termsAndConditions, 
    required this.validTill, 
    required this.couponDetails});

    factory Offers.fromJson(Map<String, dynamic> json) => _$OffersFromJson(json);
     Map<String, dynamic> toJson() => _$OffersToJson(this);
}