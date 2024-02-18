import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';
import 'package:ifu/views/home/web_view_screen.dart';

class HomeMiddleWidget extends BaseWidget<HomeViewModel> {
  const HomeMiddleWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text('Jobs & Education',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ))
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
         } else if (controller.edus == null) {
           return const Center(child: Text('Failed to load data'));
         } else {
           return SizedBox(
               height: 315,
               child: ListView.builder(
                   itemCount: controller.edus?.length,
                   itemBuilder: (BuildContext context, int index) {
                     return _ViewWidget(index);
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewScreen(
          controller.edus![index].webUrl,
          )
        )
        );
      },
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
              children: [
                _ImageContainer(index),
                const SizedBox(width: 10),
                _TextContainer(index),
              ]
          )
      ),
    );
  }
}

class _ImageContainer extends BaseWidget<HomeViewModel> {
  final int index;

  const _ImageContainer(this.index);

  @override
  Widget buildView(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(controller.edus![index].imageUrl),
        ),
        borderRadius: BorderRadius.circular(12),
      )
    );
  }
}

class _TextContainer extends BaseWidget<HomeViewModel> {
  final int index;

  const _TextContainer(this.index);

  @override
  Widget buildView(BuildContext context) {
    return Column(
        children: [
          Text(
              controller.edus![index].title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )
          ),
          Text(
              controller.edus![index].country,
              style: const TextStyle(
                  color: Color(0xFF50586C),
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              )
          ),
          Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD9E1E8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                controller.edus![index].description,
                style: const TextStyle(
                    color: Color(0xFF0A0A0A),
                    fontSize: 8,
                    fontWeight: FontWeight.w300
                ),
              )
          )
        ]
    );
  }
}