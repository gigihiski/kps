import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/history/presentation/widgets/history_sheet_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class BottomSheetHistory {
  void buildTradeSheet(BuildContext context) {
    final tradeHeader = Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(children: [
          Row(children: [
            const Icon(Icons.add_chart, color: Colors.blueGrey),
            Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(children: const [
                  Text("UMobile Top Up",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0)),
                  Text("18/10/2021 05:00",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10.0)),
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
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween));

    showModalBottomSheet(
        context: context,
        backgroundColor: Constants.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        builder: (context) {
          return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                tradeHeader,
                const TradeSheetItem(label: "Claim No.", value: "15215522399"),
                const TradeSheetItem(
                    label: "Transaction ID",
                    value: "5363040976",
                    padding: EdgeInsets.only(bottom: 20.0)),
                const TradeSheetItem(label: "Cashback", value: "RM 0.60"),
                const TradeSheetItem(label: "Tax", value: "RM 0.10"),
                const TradeSheetItem(
                    label: "Total",
                    value: "RM 0.50",
                    padding: EdgeInsets.only(bottom: 20.0)),
                Row(children: [
                  Column(children: const [
                    Text("Purchase Time",
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 15.0)),
                    Text("3 Oct 09:04:29.077",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0))
                  ], crossAxisAlignment: CrossAxisAlignment.start),
                  Column(children: const [
                    Text("Success Time",
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 15.0)),
                    Text("3 Oct 09:05:29.077",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0))
                  ], crossAxisAlignment: CrossAxisAlignment.end),
                ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
              ]));
        });
  }
}
