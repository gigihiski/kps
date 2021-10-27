import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kps/core/utils/constants.dart';

class ProductFormPage extends StatelessWidget {
  final String title;
  final String productName;

  const ProductFormPage(
      {Key? key, required this.title, required this.productName})
      : super(key: key);

  static String tag = "product-form-page";

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
        body: Column(children: [
          Column(children: [
            buildProductDenominationHeader(),
            buildProductInput()
          ]),
          buildContinueButton("Checkout", () {})
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween));
  }
}
