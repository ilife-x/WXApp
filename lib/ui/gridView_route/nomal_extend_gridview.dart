import 'package:flutter/material.dart';

class NomalGridViewExtend extends StatelessWidget {
  const NomalGridViewExtend({Key, key}) : super(key: key);
  static const String routeName = "\NomalGridViewExtend";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nomal extend grid view"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120, childAspectRatio: 1),
        children: [
          Icon(Icons.ac_unit),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_bike),
          Icon(Icons.home),
          Icon(Icons.snooze)
        ],
      ),
    );
  }
}
