import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'purchase_event.dart';
part 'purchase_state.dart';
class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  PurchaseBloc() : super(PurchaseInitial());
  @override
  Stream<PurchaseState> mapEventToState(
    PurchaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
