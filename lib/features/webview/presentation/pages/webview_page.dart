import 'dart:async';

import 'package:kps/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatelessWidget {
  final String title;
  final String url;
  static String tag = "webview-page";

  const WebviewPage({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Completer _controller = Completer();

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.backgroundColor,
            centerTitle: true,
            title: Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16.0))),
        backgroundColor: Constants.backgroundColor,
        body: WebView(
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          initialUrl: url,
        ));
  }
}
