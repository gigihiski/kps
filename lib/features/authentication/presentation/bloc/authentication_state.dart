part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];

  @override
  String toString() => "Authentication Initialized";
}

/// Authenticated
/// Authentication is on process
class Authenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "Authenticated";
}

/// Unauthenticated
/// Authentication success
class Unauthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "Unauthenticated";
}
