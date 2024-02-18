import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';

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
    return SizedBox(
      height: 226,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            width: 166,
            margin: const EdgeInsets.all(10),
            child: Text(
              'Item $index',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          );
        }
      )
    );
  }
}