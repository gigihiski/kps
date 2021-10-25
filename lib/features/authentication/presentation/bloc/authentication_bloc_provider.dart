import 'package:kps/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:kps/features/login/data/repositories/login_repository.dart';
import 'package:kps/features/login/domain/entities/login_configuration_entity.dart';
import 'package:kps/features/login/domain/usecases/login_usecase.dart';
import 'package:kps/features/login/presentation/bloc/login_bloc.dart';
import 'authentication_bloc.dart';

@immutable
class AuthenticationBlocProvider {
  static Widget provide({required Widget child}) {
    final LoginConfigurationEntity loginConfiguration =
        LoginConfigurationEntity(
            clientId: Constants.authClientID,
            redirectUrl: Constants.authRedirectURI,
            additionalAudience: Constants.authAdditionalAudience,
            issuer: 'https://${Constants.authDomain}',
            scopes: ['openid', 'profile', 'offline_access']);

    return MultiBlocProvider(providers: [
      BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) =>
              AuthenticationBloc(authenticationUseCase: AuthenticationUseCase())
                ..add(OnAppStarted())),
      BlocProvider<LoginBloc>(
          create: (BuildContext context) => LoginBloc(
              authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
              loginUseCase: LoginUseCase(
                  loginRepository: LoginRepositoryImpl(
                      loginConfiguration: loginConfiguration),
                  authenticationUseCase: AuthenticationUseCase()))),
      BlocProvider<HomeBloc>(create: (BuildContext context) => HomeBloc()),
    ], child: child);
  }
}
