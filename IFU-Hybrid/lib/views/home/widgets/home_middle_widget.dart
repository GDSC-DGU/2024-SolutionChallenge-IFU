import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';

class HomeMiddleWidget extends BaseWidget<HomeViewModel> {
  const HomeMiddleWidget({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
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
   return SizedBox(
     height: 315,
     child: ListView.builder(
         itemCount: 20,
         itemBuilder: (BuildContext context, int index) {
           return _ViewWidget();
         }
     )
   );
  }
}

class _ViewWidget extends BaseWidget {
  @override
  Widget buildView(BuildContext context) {
    return Row(
      children: [
        _ImageContainer(),
        _TextContainer(),
      ]
    );
  }
}

class _ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      )
    );
  }
}

class _TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Title',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          )
        ),
        const Text(
          'Country',
          style: TextStyle(
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
          child: const Text(
            'description',
            style: TextStyle(
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