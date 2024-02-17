import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/utils/class/app_routes.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_back_appbar.dart';

class SolvingScreen extends BaseScreen<SolvingViewModel> {
  const SolvingScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                backgroundColor: const Color(0xFFF2F4FA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              onPressed: () {
                Get.toNamed(Routes.SOLUTION);
              },
              child: const Text(
                  'Solution',
                  style: TextStyle(
                      color: Color(0xFF2B90D9),
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              )
          )
        ]
      )
    );
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