import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';
import 'package:ifu/views/home/web_view_screen.dart';

class HomeBottomWidget extends BaseWidget<HomeViewModel> {
  const HomeBottomWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text('Life & Culture',
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
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else if (controller.lifes == null) {
        return const Center(child: Text('Failed to load data'));
      } else {
        return SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: controller.lifes?.length,
                itemBuilder: (BuildContext context, int index) {
                  return _ViewWidget(index);
                }
            )
        );
      }
    });
  }
}

class _ViewWidget extends BaseWidget<HomeViewModel> {
  final int index;

  const _ViewWidget(this.index);

  @override
  Widget buildView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(controller.lifes![index].webUrl)
            )
          );
        },
        child: Container(
            width: 340,
            height: 175,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(controller.lifes![index].imageUrl)
                )
            ),
            child: Column(
                children: [
                  Text(
                    controller.lifes![index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                      controller.lifes![index].city,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )
                  )
                ]
            )
        )
      ),
    );
  }
}