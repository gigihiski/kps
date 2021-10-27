import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:kps/core/utils/constants.dart';

@immutable
class PromotionItem extends StatelessWidget {
  const PromotionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        child: Column(children: [
          CachedNetworkImage(
            height: 115.0,
            imageUrl: "http://via.placeholder.com/150x115",
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                        Constants.secondaryColor, BlendMode.colorBurn)),
              ),
            ),
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Container(
              child: const Text("Critical Desease Insurance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              margin: const EdgeInsets.only(top: 10.0)),
          Container(
              child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                      color: Colors.black, fontSize: 14.0, height: 1.5)),
              margin: const EdgeInsets.only(top: 10.0)),
          Container(
              child: const Text("Expired until 18 October 2021",
                  style: TextStyle(color: Colors.grey, fontSize: 11.0)),
              margin: const EdgeInsets.only(top: 10.0)),
          Container(
              child: Image.asset("assets/images/insurance.png", height: 25.0),
              margin: const EdgeInsets.only(top: 10.0))
        ], crossAxisAlignment: CrossAxisAlignment.start),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0));
  }
}
