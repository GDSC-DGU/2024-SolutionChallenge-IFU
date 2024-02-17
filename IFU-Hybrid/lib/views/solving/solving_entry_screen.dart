import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/utils/class/app_routes.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_appbar.dart';

class SolvingEntryScreen extends BaseScreen<SolvingViewModel> {
  const SolvingEntryScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Center(
          child: Image.asset('assets/images/problems.png',
              width: MediaQuery.of(context).size.width * 0.8),
        ),
        const SizedBox(height: 50),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            children: [
              TextSpan(
                text: 'Master your reasoning skills with ease\n\n'
              ),
              TextSpan(
                text: 'by solving a variety of problems',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            ]
          )
        ),
        const SizedBox(height: 100),
        TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
              backgroundColor: const Color(0xFFF2F4FA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.SOLVING);
            },
            child: const Text(
                'Solving',
                style: TextStyle(
                  color: Color(0xFF2B90D9),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
            )
        )
      ]
    );
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultAppBar(title: 'Quiz & Solving'),
    );
  }
}