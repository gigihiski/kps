import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'topup_event.dart';
part 'topup_state.dart';
class TopupBloc extends Bloc<TopupEvent, TopupState> {
  TopupBloc() : super(TopupInitial());
  @override
  Stream<TopupState> mapEventToState(
    TopupEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
