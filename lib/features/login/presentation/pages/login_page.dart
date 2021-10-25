import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/home/presentation/pages/home_page.dart';
import 'package:kps/features/login/presentation/bloc/login_bloc.dart';

@immutable
class LoginPage extends StatelessWidget {
  final LoginBloc loginBloc;

  const LoginPage({Key? key, required this.loginBloc}) : super(key: key);

  static String tag = "login-page";

  @override
  Widget build(BuildContext context) {
    Widget buildLoginHeader() {
      return Column(
        children: [
          Container(
              child: const Text("KPS", style: TextStyle(color: Colors.black)),
              margin: const EdgeInsets.only(bottom: 10.0)),
          const Text("Parent Monitoring App",
              style: TextStyle(color: Colors.grey))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      );
    }

    Widget buildSliderContainer() {
      return Column(children: [
        Image.asset("assets/images/logo.png",
            width: 200.0, height: 200.0, fit: BoxFit.contain),
        Container(
            child: const Text("Check your children's buy history",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0)),
            margin: const EdgeInsets.symmetric(vertical: 10.0)),
        const Text(
            "Handy tips and video tutorials are built right into the platform.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
      ], mainAxisAlignment: MainAxisAlignment.center);
    }

    Widget buildLoginSlider() {
      return CarouselSlider(
        options: CarouselOptions(
            height: 400.0, enableInfiniteScroll: false, viewportFraction: 1),
        items: [1, 2, 3, 4].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: buildSliderContainer(),
              );
            },
          );
        }).toList(),
      );
    }

    Widget buildLoginButton() {
      return TextButton(
          onPressed: () {
            loginBloc.add(
              const OnLoginByAuth0(),
            );
          },
          child: const Text("Log In / Sign Up",
              style: TextStyle(color: Colors.black)));
    }

    return Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              print(state);
              if (state is LoginFailed) {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(HomePage.tag, (route) => false);
              }
              if (state is LoginSuccess) {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(HomePage.tag, (route) => false);
              }
            },
            child: Container(
                padding: const EdgeInsets.only(
                    top: 60.0, bottom: 20.0, left: 10.0, right: 10.0),
                child: Column(children: [
                  buildLoginHeader(),
                  buildLoginSlider(),
                  buildLoginButton()
                ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                alignment: Alignment.center)));
  }
}
