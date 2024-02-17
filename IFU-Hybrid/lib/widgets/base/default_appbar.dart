import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget {
  final String title;
  const DefaultAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      surfaceTintColor: const Color(0xFFE7EBF5),
      backgroundColor: const Color(0xFFE7EBF5),
      automaticallyImplyLeading: false,
    );
  }
}
