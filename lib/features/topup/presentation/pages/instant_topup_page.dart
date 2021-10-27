import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kps/core/utils/constants.dart';

class InstantTopUpPage extends StatelessWidget {
  const InstantTopUpPage({Key? key}) : super(key: key);

  static String tag = "instant-topup-page";

  Widget buildTopUpHeader() {
    return Padding(
        child: Column(
          children: [
            const Padding(
                child: Text("Top Up To",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                padding: EdgeInsets.only(bottom: 10.0)),
            Container(
                child: Row(children: [
                  const Icon(Icons.money),
                  Padding(
                      child: Column(children: const [
                        Text("KPS Cash",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Padding(
                            child: Text("Balance RM1,000",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.black)),
                            padding: EdgeInsets.only(top: 5.0))
                      ], crossAxisAlignment: CrossAxisAlignment.start),
                      padding: const EdgeInsets.only(left: 10.0))
                ]),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: const EdgeInsets.all(20.0));
  }

  Widget buildDenominationItem(String denomination) {
    return Container(
        height: 10.0,
        child: Center(
            child: Text(denomination,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold))),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0));
  }

  Widget buildDenominationOption() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: GridView.count(
            childAspectRatio: 2.0,
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildDenominationItem("RM 5"),
              buildDenominationItem("RM 10"),
              buildDenominationItem("RM 20"),
              buildDenominationItem("RM 30"),
              buildDenominationItem("RM 50"),
              buildDenominationItem("RM 100")
            ]));
  }

  Widget buildProductInput() {
    final _controller = TextEditingController();
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Center(
            child: Column(children: [
          const Text("Choose Denominations",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          buildDenominationOption(),
          const Padding(
              child: Text("Or input topup balance here",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0)),
              padding: EdgeInsets.only(bottom: 5.0, top: 10.0)),
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.lightBlue.withOpacity(0.1),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Minimum RM10'),
          )
        ], crossAxisAlignment: CrossAxisAlignment.start)));
  }

  Widget buildContinueButton(String title, Function() onPressed) {
    return GestureDetector(
        child: Container(
            width: double.infinity,
            child: ElevatedButton(
                child: Text(title),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Constants.secondaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold))),
            margin: const EdgeInsets.all(20.0)),
        onTap: onPressed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Column(children: [buildTopUpHeader(), buildProductInput()]),
      buildContinueButton("Top Up Now", () {})
    ], mainAxisAlignment: MainAxisAlignment.spaceBetween));
  }
}
