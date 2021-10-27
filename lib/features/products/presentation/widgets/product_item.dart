import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class ProductItem extends StatelessWidget {
  final Function() onPressed;
  final String icon;
  final String title;

  const ProductItem(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(icon, width: 30.0, height: 30.0),
              title: Text(title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.grey, size: 15.0),
            )),
        onTap: onPressed);
  }
}
