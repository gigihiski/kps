import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:kps/features/home/presentation/pages/home_page_factory.dart';
import 'package:kps/features/login/presentation/pages/login_page_factory.dart';
import 'package:kps/features/splash/presentation/pages/splash_page_factory.dart';

@immutable
class AuthenticationBlocBuilder {
  static Widget build() {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is AuthenticationInitial) {
          return SplashPageFactory.create(logo: Constants.logoURL);
        }
        if (state is Unauthenticated) return LoginPageFactory.create(context);

        /// Authenticated
        return HomePageFactory.create();
      },
    );
  }
}
