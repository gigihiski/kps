part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class OnAppStarted extends AuthenticationEvent {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "OnAppStarted";
}

/// OnLoggedIn
/// Authentication process being authenticated
class OnLoggedIn extends AuthenticationEvent {
  final AuthorizationTokenResponse token;

  const OnLoggedIn(this.token);

  @override
  List<Object?> get props => [token];

  @override
  String toString() => "OnLoggedIn: {token: $token}";
}

/// OnLoggedOut
/// Authentication process being unauthenticated
class OnLoggedOut extends AuthenticationEvent {
  @override
  List<Object?> get props => [];

  @override
  String toString() => "OnLoggedOut";
}
