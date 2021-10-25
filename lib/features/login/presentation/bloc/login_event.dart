part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class OnLoginByAuth0 extends LoginEvent {
  const OnLoginByAuth0();

  @override
  List<Object?> get props => [];

  @override
  String toString() => "OnLoginByAuth0: {}";
}
