import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

@immutable
class OtherMethodTopUpItem extends StatelessWidget {
  const OtherMethodTopUpItem({Key? key}) : super(key: key);

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
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(children: const [
                      Text("MayBank M-Banking",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0)),
                      Padding(
                          child: Text("MayBank Sdn Bhd",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 10.0)),
                          padding: EdgeInsets.only(top: 5.0))
                    ], crossAxisAlignment: CrossAxisAlignment.start))
              ]),
              const Icon(Icons.arrow_forward_ios_outlined,
                  size: 15.0, color: Colors.black)
            ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
            padding: const EdgeInsets.all(10.0)),
        margin: const EdgeInsets.symmetric(vertical: 5.0));
  }
}
