import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kps/features/authentication/data/models/authorization_token_response.dart';
import 'package:kps/features/authentication/domain/usecases/authentication_usecase.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  late AuthenticationUseCase _authenticationUseCase;
  AuthenticationBloc({required AuthenticationUseCase authenticationUseCase})
      : super(AuthenticationInitial()) {
    _authenticationUseCase = authenticationUseCase;
  }

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is OnAppStarted) yield* _mapOnAppStartedToState();
    if (event is OnLoggedIn) yield* _mapOnLoggedInToState(event);
    if (event is OnLoggedOut) yield* _mapOnLoggedOutToState();
  }

  Stream<AuthenticationState> _mapOnAppStartedToState() async* {
    await Future.delayed(const Duration(seconds: 2));
    final isAuthorized = await _authenticationUseCase.isAuthorized();
    yield isAuthorized ? Authenticated() : Unauthenticated();
  }

  Stream<AuthenticationState> _mapOnLoggedInToState(OnLoggedIn event) async* {
    yield Authenticated();
  }

  Stream<AuthenticationState> _mapOnLoggedOutToState() async* {
    yield Unauthenticated();
  }
}
