import 'package:flutter/material.dart';
import 'package:kps/features/topup/presentation/widgets/other_method_topup_item.dart';

class OtherMethodTopUpPage extends StatelessWidget {
  const OtherMethodTopUpPage({Key? key}) : super(key: key);

  static String tag = "other-method-topup-page";

  Widget buildTopUpHeader() {
    return Column(
      children: [
        const Padding(
            child: Text("Top Up Balance To",
                style: TextStyle(fontSize: 11.0, color: Colors.grey)),
            padding: EdgeInsets.only(bottom: 10.0)),
        const Text("KPS Cash",
            style: TextStyle(fontSize: 14.0, color: Colors.black)),
        const Divider(color: Colors.black),
        Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            child: Column(children: const [
              Text("KPS CASH BALANCE",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey)),
              Padding(
                  child: Text("RM1,000",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  padding: EdgeInsets.only(top: 5.0))
            ], crossAxisAlignment: CrossAxisAlignment.center),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(7.5))),
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0))
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            child: Column(children: [
              buildTopUpHeader(),
              const Padding(
                  child: Text("Choose other payment method below",
                      style: TextStyle(fontSize: 13.0, color: Colors.grey)),
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0)),
              Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          child: const OtherMethodTopUpItem(),
                          onTap: () {},
                        );
                      }))
            ], crossAxisAlignment: CrossAxisAlignment.start),
            padding: const EdgeInsets.all(20.0)));
  }
}
