import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part  'bills.g.dart';

@JsonSerializable()
@CustomDateTimeConverter()
class Bill{

  final String billNo;
  
  final DateTime dateTime;
  final List<BillItems> billItems;
  final int totalItems;
  final int totalQty;
 final  double subtotal;
 final  double sgstAmount;
 final  double sgstPercentage;
 final  double cgstAmount;
 final  double cgstPercentage;
 final  double totalTax;
 final  double totalAmount;
 final  double cashTendered;
 @JsonKey(name: "totalDiscouts")
 final  double totalDiscounts;
  
  const Bill({
    required this.billNo, 
    required this.dateTime, 
    required this.billItems, 
    required this.totalItems, 
    required this.totalQty, 
    required this.subtotal, 
    required this.sgstAmount, 
    required this.sgstPercentage, 
    required this.cgstAmount, 
    required this.cgstPercentage, 
    required this.totalTax, 
    required this.totalAmount, 
    required this.cashTendered, 
    required this.totalDiscounts});


    factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BillToJson(this);

}

@JsonSerializable()
class BillItems{
  final String itemName;
  final int qty;
  final double price;
  final double discount;
  final double amount;


  const BillItems({
    required this.itemName,
    required this.qty,
    required this.price,
    required this.discount,
    required this.amount});



    factory BillItems.fromJson(Map<String, dynamic> json) => _$BillItemsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BillItemsToJson(this);

}


class CustomDateTimeConverter implements JsonConverter<DateTime, String> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(String str) {
     DateFormat dateFormat = DateFormat("dd/MM/yy hh:mm a");
     DateTime dateTime = dateFormat.parse(str);
    return dateTime ;
  }

  @override
  String toJson(DateTime date) => date.toIso8601String();
}