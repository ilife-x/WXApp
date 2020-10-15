import 'package:flutter/material.dart';

class WuxianListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("商品列表"),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
        ))
      ],
    );
  }
}
