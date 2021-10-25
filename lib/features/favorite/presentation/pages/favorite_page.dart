import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  static String tag = "favorite-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Text("Favorite Page"), alignment: Alignment.center));
  }
}
