import 'package:flutter/material.dart';
import 'package:kps/features/splash/presentation/pages/splash_page.dart';

class SplashPageFactory {
  static StatelessWidget create({String logo = ""}) {
    return SplashPage(logo: logo);
  }
}
