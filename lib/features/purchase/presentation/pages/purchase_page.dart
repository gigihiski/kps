import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);

  static String tag = "purchase-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Text("Purchase Page"), alignment: Alignment.center));
  }
}
