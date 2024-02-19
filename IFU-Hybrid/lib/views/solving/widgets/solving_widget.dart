import 'package:flutter/material.dart';
import 'package:ifu/models/solving/solving_model.dart';

class SolvingWidget extends StatelessWidget {
  final SolvingModel question;

  const SolvingWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          question.question,
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
