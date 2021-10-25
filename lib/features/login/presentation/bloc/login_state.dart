part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

/// LoggingIn
/// Authentication is on process
class LoggingIn extends LoginState {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "LoggingIn";
}

/// LoginSuccess
/// Authentication success
class LoginSuccess extends LoginState {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "LoginSuccess";
}

/// LoginFailed
/// Authentication failed
class LoginFailed extends LoginState {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "LoginFailed";
}
