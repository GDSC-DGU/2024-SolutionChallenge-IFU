import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConceptWebViewWidget extends StatefulWidget {
  const ConceptWebViewWidget({super.key});

  @override
  State<ConceptWebViewWidget> createState() => _WebViewState();
}

class _WebViewState extends State<ConceptWebViewWidget> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://65d0b72c8f9229857aabbd6b--chic-pudding-3bbe86.netlify.app/'),
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