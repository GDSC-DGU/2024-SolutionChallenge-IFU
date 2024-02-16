import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/view_models/root/root_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/views/chat/chat_screen.dart';
import 'package:ifu/views/concept/concept_screen.dart';
import 'package:ifu/views/home/home_screen.dart';
import 'package:ifu/views/solving/solving_entry_screen.dart';
import 'package:ifu/widgets/root/custom_bottom_navigation_bar.dart';

class RootScreen extends BaseScreen<RootViewModel> {
  const RootScreen({super.key});

  @override
  Color get safeAreaColor => const Color(0xFFE7EBF5);

  @override
  Widget buildBody(BuildContext context) {
    return Obx(() => IndexedStack(
      index: viewModel.selectedIndex,
      children: const [
        HomeScreen(),
        ConceptScreen(),
        SolvingEntryScreen(),
        ChatScreen(),
      ],
    ));
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