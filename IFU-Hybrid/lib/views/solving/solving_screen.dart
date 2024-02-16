import 'package:flutter/material.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/widgets/base/default_appbar.dart';

class SolvingScreen extends BaseScreen<SolvingViewModel> {
  const SolvingScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
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
        )
      ]
    );
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultAppBar(title: 'Solving'),
    );
  }
}