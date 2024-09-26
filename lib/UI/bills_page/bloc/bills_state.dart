import 'package:ads_app/models/bills.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bills_state.freezed.dart';

@freezed
class BillsState with _$BillsState {
const factory BillsState({
    @Default([]) List<Bill> data,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default([]) List<int> newlyAddedIndices,
  }) = _BillsState;
} 