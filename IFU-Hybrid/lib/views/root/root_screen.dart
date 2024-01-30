import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/view_models/root/root_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_appbar.dart';
import 'package:ifu/widgets/root/custom_bottom_navigation_bar.dart';

class RootScreen extends BaseScreen<RootViewModel> {
  const RootScreen({super.key});

  @override
  Color get safeAreaColor => const Color(0xFFFFFFFF);

  @override
  Widget buildBody(BuildContext context) {
    return Obx(() => IndexedStack(
      index: viewModel.selectedIndex,
      children: const [

      ],
    ));
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultAppBar(title: 'IFU'),
    );
  }

  @override
  Widget buildBottomNavigationBar(BuildContext context) {
    return const CustomBottomNavigationBar();
  }

  @override
  bool get setTopOuterSafeArea => false;

  @override
  bool get setBottomOuterSafeArea => false;
}