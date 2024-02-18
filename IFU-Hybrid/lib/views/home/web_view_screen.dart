import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/views/home/widgets/home_web_view_widget.dart';
import 'package:ifu/widgets/base/default_back_appbar.dart';

class WebViewScreen extends BaseScreen<HomeViewModel> {
  final String webUrl;

  const WebViewScreen(this.webUrl, {super.key});

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultBackAppBar(title: 'Concept of BIF'),
    );
  }

  @override
  Color get unSafeAreaColor => const Color(0xFFE7EBF5);

  @override
  Widget buildBody(BuildContext context) {
    return HomeWebViewWidget(webUrl: webUrl);
  }
}