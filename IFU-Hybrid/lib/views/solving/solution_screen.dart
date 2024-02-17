import 'package:flutter/material.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_back_appbar.dart';

class SolutionScreen extends BaseScreen<SolvingViewModel> {
  const SolutionScreen({super.key});

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
                    int count = 0;
                    Navigator.of(context).popUntil((_) => count++ >= 2);
                  },
                  child: const Text(
                      'Complete',
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
  Color get unSafeAreaColor => const Color(0xFFE7EBF5);

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultBackAppBar(title: 'Solution'),
    );
  }
}