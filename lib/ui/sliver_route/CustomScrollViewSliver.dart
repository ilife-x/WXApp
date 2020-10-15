import 'package:flutter/material.dart';

class CustomScrollViewSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          ///应用程序栏是否应该在滚动视图开始时保持可见。
          pinned: true,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("demo"),
            background: Image.asset(
              "lib/images/avatar.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext contex, int index) {
                return Container(
                  color: Colors.cyan[100 * ((index % 9) + 1)],
                  child: Text("$index"),
                  alignment: Alignment.center,
                );
              }, childCount: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              )),
        ),
        SliverFixedExtentList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.cyan[100 * ((index % 9) + 1)],
                child: Text("$index"),
              );
            }, childCount: 20),
            itemExtent: 50)
      ],
    );
  }
}
