import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';

class HomeTopWidget extends BaseWidget<HomeViewModel> {
  const HomeTopWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
   return const Column(
     children: [
       Text('Insight',
       style: TextStyle(
         fontSize: 20,
         fontWeight: FontWeight.w600,
       )),
     ]
   );
  }
}