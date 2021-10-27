import 'package:kps/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:kps/features/promotion/presentation/widgets/promotion_tablist_view.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

  static String tag = "promotion-page";

  @override
  Widget build(BuildContext context) {
    final tabListView = PromotionTabListView();

    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text("Promo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0))),
        backgroundColor: Constants.backgroundColor,
        body: tabListView);
  }
}
