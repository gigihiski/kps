import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

@immutable
class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
        child: Padding(
            child: Row(children: [
              Row(children: [
                const Icon(Icons.mobile_friendly_outlined,
                    color: Colors.blueGrey),
                Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(children: const [
                      Text("UMobile Top Up",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0)),
                      Text("18/10/2021 05:00",
                          style: TextStyle(
                              color: Colors.blueGrey, fontSize: 10.0)),
                      Text("Success",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0))
                    ], crossAxisAlignment: CrossAxisAlignment.start))
              ]),
              Column(children: const [
                Text("RM 6.00",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0)),
                Text("- RM 10.00",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ], crossAxisAlignment: CrossAxisAlignment.end)
            ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
            padding: const EdgeInsets.all(10.0)),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0));
  }
}
