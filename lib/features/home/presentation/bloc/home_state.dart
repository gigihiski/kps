part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomePageLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class DashboardPageLoadedSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class DashboardPageLoadedFailed extends HomeState {
  @override
  List<Object> get props => [];
}

class HistoryPageLoadedSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class HistoryPageLoadedFailed extends HomeState {
  @override
  List<Object> get props => [];
}

class PurchasePageLoadedSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class PurchasePageLoadedFailed extends HomeState {
  @override
  List<Object> get props => [];
}

class FavoritePageLoadedSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class FavoritePageLoadedFailed extends HomeState {
  @override
  List<Object> get props => [];
}

class ProfilePageLoadedSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class ProfilePageLoadedFailed extends HomeState {
  @override
  List<Object> get props => [];
}
