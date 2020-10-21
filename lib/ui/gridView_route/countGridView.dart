import 'package:flutter/material.dart';

class CountGridView extends StatelessWidget {
  const CountGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('count gridview'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
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
