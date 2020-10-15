import 'package:flutter/material.dart';

class BuilderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.0),
      itemBuilder: (BuildContext context, int index) {
        return Icon(Icons.directions_bike);
      },
      itemCount: 20,
    );
  }
}
