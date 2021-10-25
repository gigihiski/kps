import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/webview/presentation/pages/webview_page.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  static String tag = "help-page";

  Widget titleHeader(String title) {
    return Text(title,
        style: const TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold));
  }

  Widget subTitleHeader(String title) {
    return Container(
        child: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold)),
        margin: const EdgeInsets.only(top: 20.0, bottom: 10.0));
  }

  @override
  Widget build(BuildContext context) {
    final helpItem = Container(
        decoration: const BoxDecoration(
            color: Constants.secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const ListTile(
            leading: Icon(Icons.help, color: Colors.grey),
            title: Text("How to Trade", style: TextStyle(color: Colors.white)),
            subtitle:
                Text("A quick guide", style: TextStyle(color: Colors.grey))),
        margin: const EdgeInsets.symmetric(vertical: 5.0));

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.backgroundColor,
            centerTitle: true),
        backgroundColor: Constants.backgroundColor,
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index) {
                  if (index == 0) return titleHeader("Help");
                  if (index == 1) {
                    return subTitleHeader("Answers the questions");
                  }
                  if (index == 5) return subTitleHeader("Helps to trade");
                  return GestureDetector(
                    child: helpItem,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebviewPage(
                              title: "Customer Support",
                              url: "https://flutter.dev"),
                        ),
                      );
                    },
                  );
                }),
            alignment: Alignment.center));
  }
}
