import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

@immutable
class TradeSheetItem extends StatelessWidget {
  final String label;
  final String value;
  final EdgeInsets padding;

  const TradeSheetItem(
      {Key? key,
      required this.label,
      required this.value,
      this.padding = const EdgeInsets.only(bottom: 5.0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(children: [
        Text(label,
            style: const TextStyle(color: Colors.blueGrey, fontSize: 15.0)),
        Text(value,
            style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 15.0))
      ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
    );
  }
}
