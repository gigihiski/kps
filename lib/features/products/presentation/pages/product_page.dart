import 'package:kps/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:kps/features/products/presentation/pages/product_denomination_page.dart';
import 'package:kps/features/products/presentation/pages/product_form_page.dart';
import 'package:kps/features/products/presentation/widgets/product_item.dart';

class ProductPage extends StatelessWidget {
  final String title;

  const ProductPage({Key? key, required this.title}) : super(key: key);

  static String tag = "product-page";

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
        body: ListView.builder(
            itemCount: 2,
            itemBuilder: (_, index) {
              if (index == 0) {
                return ProductItem(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDenominationPage(
                                  title: title, productName: "TNB Prepaid")));
                    },
                    icon: "assets/images/tnb.png",
                    title: "TNB Prepaid");
              }
              return ProductItem(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductFormPage(
                                title: title, productName: "TNB Postpaid")));
                  },
                  icon: "assets/images/tnb.png",
                  title: "TNB Postpaid");
            }));
  }
}
