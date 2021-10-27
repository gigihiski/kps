import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductDenominationPage extends StatelessWidget {
  final String title;
  final String productName;

  const ProductDenominationPage(
      {Key? key, required this.title, required this.productName})
      : super(key: key);

  static String tag = "product-denomination-page";

  Widget buildProductDenominationHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/wave_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(children: [
        Image.asset("assets/images/tnb.png", width: 30.0, height: 30.0),
        Padding(
            child: Text(productName,
                style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            padding: const EdgeInsets.only(left: 5.0))
      ]),
    );
  }

  Widget buildProductInput() {
    final _controller = TextEditingController();
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Center(
            child: Column(children: [
          const Padding(
              child: Text("TNB Account No.",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0)),
              padding: EdgeInsets.only(bottom: 5.0)),
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.lightBlue.withOpacity(0.1),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Please input TNB account here',
              suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: const Icon(Icons.clear),
              ),
            ),
          )
        ], crossAxisAlignment: CrossAxisAlignment.start)));
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
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 7.5));
  }

  Widget buildDenominationOption() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: GridView.count(
            childAspectRatio: 2.0,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildDenominationItem("RM 5"),
              buildDenominationItem("RM 10"),
              buildDenominationItem("RM 20"),
              buildDenominationItem("RM 30"),
              buildDenominationItem("RM 50"),
              buildDenominationItem("RM 100"),
              buildDenominationItem("RM 200"),
              buildDenominationItem("RM 500")
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0))),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == 0) {
                    return buildProductDenominationHeader();
                  }
                  if (index == 1) {
                    return buildProductInput();
                  }
                  if (index == 2) {
                    return buildDenominationOption();
                  }
                },
                childCount: 3,
              ),
            ),
          ],
        ));
  }
}
