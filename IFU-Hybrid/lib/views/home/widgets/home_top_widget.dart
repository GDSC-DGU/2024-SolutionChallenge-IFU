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
                height: 240,
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
                        child: _ViewWidget(index),
                      );
                    }
                )
            );
          }
        }
    );
  }
}

class _ViewWidget extends BaseWidget<HomeViewModel> {
  final int index;

  const _ViewWidget(this.index);

  @override
  Widget buildView(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(int.parse(controller.insights![index].color)),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: -3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ]
        ),
        width: 166,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Image.network(
                controller.insights![index].imageUrl,
                width: 166,
                height: 176,
                fit: BoxFit.cover,
              ),
            ),
            _TextWidget(index),
          ]
        )
    );
  }
}

class _TextWidget extends BaseWidget<HomeViewModel> {
  final int index;

  const _TextWidget(this.index);

  @override
  Widget buildView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Text(
        controller.insights![index].title,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}