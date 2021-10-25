import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:kps/features/login/domain/usecases/login_usecase.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late AuthenticationBloc _authenticationBloc;
  late LoginUseCase _loginUseCase;

  LoginBloc(
      {required AuthenticationBloc authenticationBloc,
      required LoginUseCase loginUseCase})
      : super(LoginInitial()) {
    _authenticationBloc = authenticationBloc;
    _loginUseCase = loginUseCase;
  }

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is OnLoginByAuth0) yield* _mapOnLoginByAuth0ToState();
  }

  Stream<LoginState> _mapOnLoginByAuth0ToState() async* {
    final token = await _loginUseCase.authorize();
    print(token);
    if (token != null) {
      _authenticationBloc.add(OnLoggedIn(token));
    } else {
      yield LoginFailed();
    }
  }
}
