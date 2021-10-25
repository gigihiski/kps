import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class HistoryItemHeader extends StatelessWidget {
  const HistoryItemHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            children: const [Text("3 October 2021"), Text("Transactions: 1")]),
        padding: const EdgeInsets.only(
            top: 10.0, bottom: 5.0, left: 5.0, right: 5.0));
  }
}
