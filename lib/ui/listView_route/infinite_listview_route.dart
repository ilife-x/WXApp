import 'package:flutter/material.dart';

class WuxianListView extends StatelessWidget {
  static const String routeName = "\WuxianListView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("无限列表"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("商品列表"),
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              //不指定数量即是无限列表
              return ListTile(title: Text("$index"));
            },
          ))
        ],
      ),
    );
  }
}
