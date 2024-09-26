// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bill _$BillFromJson(Map<String, dynamic> json) => Bill(
      billNo: json['billNo'] as String,
      dateTime:
          const CustomDateTimeConverter().fromJson(json['dateTime'] as String),
      billItems: (json['billItems'] as List<dynamic>)
          .map((e) => BillItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: (json['totalItems'] as num).toInt(),
      totalQty: (json['totalQty'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toDouble(),
      sgstAmount: (json['sgstAmount'] as num).toDouble(),
      sgstPercentage: (json['sgstPercentage'] as num).toDouble(),
      cgstAmount: (json['cgstAmount'] as num).toDouble(),
      cgstPercentage: (json['cgstPercentage'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      cashTendered: (json['cashTendered'] as num).toDouble(),
      totalDiscounts: (json['totalDiscouts'] as num).toDouble(),
    );

Map<String, dynamic> _$BillToJson(Bill instance) => <String, dynamic>{
      'billNo': instance.billNo,
      'dateTime': const CustomDateTimeConverter().toJson(instance.dateTime),
      'billItems': instance.billItems,
      'totalItems': instance.totalItems,
      'totalQty': instance.totalQty,
      'subtotal': instance.subtotal,
      'sgstAmount': instance.sgstAmount,
      'sgstPercentage': instance.sgstPercentage,
      'cgstAmount': instance.cgstAmount,
      'cgstPercentage': instance.cgstPercentage,
      'totalTax': instance.totalTax,
      'totalAmount': instance.totalAmount,
      'cashTendered': instance.cashTendered,
      'totalDiscouts': instance.totalDiscounts,
    };

BillItems _$BillItemsFromJson(Map<String, dynamic> json) => BillItems(
      itemName: json['itemName'] as String,
      qty: (json['qty'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$BillItemsToJson(BillItems instance) => <String, dynamic>{
      'itemName': instance.itemName,
      'qty': instance.qty,
      'price': instance.price,
      'discount': instance.discount,
      'amount': instance.amount,
    };
