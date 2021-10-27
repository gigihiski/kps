import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'qrscan_event.dart';
part 'qrscan_state.dart';
class QrscanBloc extends Bloc<QrscanEvent, QrscanState> {
  QrscanBloc() : super(QrscanInitial());
  @override
  Stream<QrscanState> mapEventToState(
    QrscanEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
