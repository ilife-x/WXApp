import 'package:flutter/material.dart';

class ExtendGridView extends StatelessWidget {
  const ExtendGridView({Key key}) : super(key: key);
  static const String routeName = "\ExtendGridView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("extend gridView"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 120,
        childAspectRatio: 1.0,
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
