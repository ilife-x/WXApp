import 'package:flutter/material.dart';

class NomalGridView extends StatelessWidget {
  const NomalGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nomal GridView'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1),
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
