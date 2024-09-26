import 'package:ads_app/models/offers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_state.freezed.dart';

@freezed
class OffersState with _$OffersState {
const factory OffersState({
    @Default([]) List<Offers> data,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default([]) List<int> newlyAddedIndices,
  }) = _OffersState;
} 