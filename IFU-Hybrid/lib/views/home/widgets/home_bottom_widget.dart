import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';

class HomeBottomWidget extends BaseWidget<HomeViewModel> {
  const HomeBottomWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
    return const Column(
      children: [
        Text('Life & Culture',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ))
      ]
    );
  }
}