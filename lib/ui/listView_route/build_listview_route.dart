import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  static const String routeName = "\ListViewBuilder";

  const ListViewBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listView Builder"),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemExtent: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("第 $index 行"),
          );
        },
      ),
    );
  }
}
