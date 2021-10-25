import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static String tag = "dashboard-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Text("Dashboard Page"), alignment: Alignment.center));
  }
}
