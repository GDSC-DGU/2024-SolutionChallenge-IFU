import 'package:flutter/material.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_back_appbar.dart';

class SolvingScreen extends BaseScreen<SolvingViewModel> {
  const SolvingScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultBackAppBar(title: 'Solving'),
    );
  }

  @override
  Color get unSafeAreaColor => const Color(0xFFE7EBF5);
}