import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeWebViewWidget extends StatefulWidget {
  final String webUrl;

  const HomeWebViewWidget({super.key, required this.webUrl});

  @override
  State<HomeWebViewWidget> createState() => _WebViewState();
}

class _WebViewState extends State<HomeWebViewWidget> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.webUrl),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _controller,
      )
    );
  }
}