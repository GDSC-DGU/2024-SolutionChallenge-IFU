import 'package:flutter/material.dart';
import 'package:ifu/view_models/home/home_view_model.dart';
import 'package:ifu/views/base/base_widget.dart';

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
    return SizedBox(
      height: 200,
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 340,
        height: 175,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: const Column(
          children: [
            Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Text(
                'Country',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )
            )
          ]
        )
      ),
    );
  }
}