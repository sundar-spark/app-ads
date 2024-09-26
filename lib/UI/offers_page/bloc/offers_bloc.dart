import 'package:ads_app/UI/offers_page/bloc/offers_event.dart';
import 'package:ads_app/UI/offers_page/bloc/offers_state.dart';
import 'package:ads_app/repositories/offer_repository.dart';
import 'package:bloc/bloc.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final OfferRepository repository;
  OffersBloc({required this.repository}) : super(OffersState()) {
    on<OffersEvent>((event, emit) {
    });
    on<OffersInit>(_onStarted);
    on<OffersUpdate>(_onOffersUpdate);
  }

  Future<void> _onStarted(OffersInit event, Emitter<OffersState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
       final offerList = await repository.fetchOffers();
        add(OffersUpdate(offerList));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
  Future<void> _onOffersUpdate(OffersUpdate event, Emitter<OffersState> emit) async{
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(data: event.offers, isLoading: false));
  }

}
