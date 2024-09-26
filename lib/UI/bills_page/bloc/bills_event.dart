import 'package:ads_app/models/bills.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bills_event.freezed.dart';

@freezed
class BillsEvent with _$BillsEvent {
  const factory BillsEvent.started() = Started;
  const factory BillsEvent.fetchData() = FetchData;
  const factory BillsEvent.billsUpdated(List<Bill> bills) = BillsUpdate;
}
