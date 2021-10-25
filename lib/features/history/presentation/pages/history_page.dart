import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/history/presentation/widgets/tab_listview.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  static String tag = "history-page";

  @override
  Widget build(BuildContext context) {
    final tabListView = TabListView();

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.backgroundColor,
            centerTitle: true,
            title: const Text("History",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0))),
        backgroundColor: Constants.backgroundColor,
        body: tabListView);
  }
}
