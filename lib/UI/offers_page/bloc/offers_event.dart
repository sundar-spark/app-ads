import 'package:ads_app/models/offers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_event.freezed.dart';

@freezed
class OffersEvent with _$OffersEvent {
  const factory OffersEvent.started() = OffersInit;
  const factory OffersEvent.fetchData() = FetchOffers;
  const factory OffersEvent.offersUpdated(List<Offers> offers) = OffersUpdate;
}