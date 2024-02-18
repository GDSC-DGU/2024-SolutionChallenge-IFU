import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';
import 'package:ifu/views/home/web_view_screen.dart';

class HomeTopWidget extends BaseWidget<HomeViewModel> {
  const HomeTopWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       const Padding(
         padding: EdgeInsets.all(12),
         child: Text('Insight',
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w600,
             )),
       ),
       _ListViewWidget(),
     ]
   );
  }
}

class _ListViewWidget extends BaseWidget<HomeViewModel> {
  @override
  Widget buildView(BuildContext context) {
    return Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.insights == null) {
            return const Center(child: Text('Failed to load data'));
          } else {
            return SizedBox(
                height: 226,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.insights!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(controller.insights![index].webUrl)
                            )
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(controller.insights![index].imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            width: 166,
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              controller.insights![index].title,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                        ),
                      );
                    }
                )
            );
          }
        }
    );
  }
}