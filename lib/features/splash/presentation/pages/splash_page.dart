import 'package:flutter/material.dart';
import 'package:kps/core/utils/constants.dart';

@immutable
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key, required this.logo}) : super(key: key);

  static String tag = "splash-page";

  final String logo;

  @override
  Widget build(BuildContext context) {
    final logoContainer =
        Image.asset(logo, width: 150.0, height: 150.0, fit: BoxFit.contain);

    return Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Container(child: logoContainer, alignment: Alignment.center));
  }
}
