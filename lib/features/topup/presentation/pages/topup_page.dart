import 'package:kps/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:kps/features/topup/presentation/widgets/topup_tab_listview.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  static String tag = "topup-page";

  @override
  Widget build(BuildContext context) {
    final tabListView = TopUpTabListView();

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.secondaryColor,
            centerTitle: true,
            title: const Text("Top Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16.0))),
        backgroundColor: Constants.backgroundColor,
        body: tabListView);
  }
}
