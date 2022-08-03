import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NeuWebviewWidget extends StatefulWidget {
  final String urlPath;

  const NeuWebviewWidget(this.urlPath, {Key? key}) : super(key: key);
  @override
  NeuWebviewWidgetState createState() => NeuWebviewWidgetState();
}

class NeuWebviewWidgetState extends State<NeuWebviewWidget> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.urlPath,
    );
  }
}
