part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class OnBottomNavigationSelect extends HomeEvent {
  final int index;

  const OnBottomNavigationSelect({required this.index});

  @override
  List<Object?> get props => [index];

  @override
  String toString() => "OnBottomNavigationSelect: {index: $index}";
}
