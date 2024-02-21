import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConceptWebViewWidget extends StatefulWidget {
  const ConceptWebViewWidget({super.key});

  @override
  State<ConceptWebViewWidget> createState() => _WebViewState();
}

class _WebViewState extends State<ConceptWebViewWidget> {
  late final WebViewController _controller;
  final String webUrl = dotenv.env['CONCEPT_WEB_URL']!;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse(webUrl),
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