import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_appbar.dart';

class HomeScreen extends BaseScreen<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultAppBar(title: ''),
    );
  }
}