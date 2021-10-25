import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/features/login/presentation/bloc/login_bloc.dart';
import 'package:kps/features/login/presentation/pages/login_page.dart';

@immutable
class LoginPageFactory {
  static StatelessWidget create(BuildContext context) {
    return LoginPage(loginBloc: BlocProvider.of<LoginBloc>(context));
  }
}
