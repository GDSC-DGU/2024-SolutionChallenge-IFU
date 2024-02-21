import 'package:flutter/material.dart';
import 'package:ifu/models/solving/solving_model.dart';

class SolutionWidget extends StatelessWidget {
  final String answer;

  const SolutionWidget({
    Key? key,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          answer,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
