import 'package:flutter/material.dart';

class ExtendGridView extends StatelessWidget {
  const ExtendGridView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
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
    );
  }
}
