import 'package:flutter/material.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

  static String tag = "promo-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Text("Promo Page"), alignment: Alignment.center));
  }
}
