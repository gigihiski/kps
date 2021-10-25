import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int currentIndex = 0;

  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeInitial) {
      add(OnBottomNavigationSelect(index: currentIndex));
    }

    if (event is OnBottomNavigationSelect) {
      yield* _mapOnBottomNavigationSelectToState(event);
    }
  }

  Stream<HomeState> _mapOnBottomNavigationSelectToState(
      OnBottomNavigationSelect event) async* {
    currentIndex = event.index;
    // Loading
    yield HomePageLoading();

    if (currentIndex == 0) yield DashboardPageLoadedSuccess();
    if (currentIndex == 1) yield HistoryPageLoadedSuccess();
    if (currentIndex == 2) yield PurchasePageLoadedSuccess();
    if (currentIndex == 3) yield FavoritePageLoadedSuccess();
    if (currentIndex == 4) yield ProfilePageLoadedSuccess();
  }
}
