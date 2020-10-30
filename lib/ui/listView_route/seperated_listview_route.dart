import 'package:flutter/material.dart';

class ListViewSeparate extends StatelessWidget {
  static const String routeName = "\ListViewSeparate";

  const ListViewSeparate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget diver1 = Divider(
      color: Colors.green,
    );

    Widget diver2 = Divider(
      color: Colors.red,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("seperateListView"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext contex, int index) {
          return Container(
            height: 30,
            child: ListTile(
              title: Text("第 $index 行"),
            ),
          );
        },
        separatorBuilder: (BuildContext contex, int index) {
          return index % 2 == 0 ? diver1 : diver2;
        },
        itemCount: 30,
      ),
    );
  }
}
