import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/utils/class/app_routes.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCE2F0),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 58,
                            height: 1.3,
                            color: Colors.blue.shade200,
                          ),
                          children: const [
                            TextSpan(
                              text: 'Your\n',
                            ),
                            TextSpan(
                              text: 'Companion\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'for ',
                            ),
                            TextSpan(
                              text: 'Clearer\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Thinking',
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Our app helps you understand, decide,\nand act for borderline intelligence people.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.8,
                      color: Color(0xFF50586C),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 60,
                      margin: const EdgeInsets.only(bottom: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF2F4FA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Get.offAndToNamed(Routes.ROOT);
                        },
                        child: const Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2B90D9),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
