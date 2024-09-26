
import 'dart:async';

import 'package:ads_app/UI/bills_page/bloc/bills_event.dart';
import 'package:ads_app/UI/bills_page/bloc/bills_state.dart';
import 'package:ads_app/models/bills.dart';
import 'package:ads_app/repositories/bill_repository.dart';
import 'package:bloc/bloc.dart';


class BillsBloc extends Bloc<BillsEvent, BillsState> {
  final BillRepository repository;
  StreamSubscription<List<Bill>>? _billsSubscription;
  BillsBloc({required this.repository}) : super(const BillsState()) {
    on<BillsEvent>((event, emit) {
    });
    on<Started>(_onStarted);
    on<BillsUpdate>(_onBillsUpdated);
}

Future<void> _onStarted(Started event, Emitter<BillsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
   _billsSubscription = repository.fetchBills().listen((bills) {
        add(BillsEvent.billsUpdated(bills));
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void _onBillsUpdated(BillsUpdate event, Emitter<BillsState> emit)async {
    emit(state.copyWith(isLoading: true));
    final newlyAddedIndices = List.generate(event.bills.length, (index) => index)
        .where((index) => !state.data.contains(event.bills[index]))
        .toList();
        print("newlyAddedItems: $newlyAddedIndices");
    emit(state.copyWith(data: event.bills,newlyAddedIndices: newlyAddedIndices, isLoading: false));
    await Future.delayed(Duration(seconds: 2));
    emit(state.copyWith(newlyAddedIndices: []));
  }

  @override
  Future<void> close() {
    _billsSubscription?.cancel();
    return super.close();
  }
}
