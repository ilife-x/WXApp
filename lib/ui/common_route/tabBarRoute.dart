import 'package:flutter/material.dart';

class TabbarRoute extends StatefulWidget {
  @override
  _TabbarRouteState createState() => _TabbarRouteState();
}

class _TabbarRouteState extends State<TabbarRoute>
    with SingleTickerProviderStateMixin {
  List tabs = ["新闻", "历史", "图片"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("myApp"),
          //右侧按钮
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.directions_bike),
              tooltip: "hhh",
              onPressed: () {},
            ),
          ],
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: Icon(Icons.leak_add),
                tooltip: "aaa",
                //通过Scaffold.of(context)可以获取父级最近的Scaffold 组件的State对象。
                onPressed: () => Scaffold.of(context).openDrawer());
          }),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList(),
            onTap: (int index) {
              print("点击了$index");
            },
          )),

      body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  e,
                  textScaleFactor: 5,
                ),
              ),
            );
          }).toList()),

      //底部导航
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            SizedBox(),
            IconButton(
              icon: Icon(Icons.business),
              onPressed: () {},
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("点击中间的洞");
        },
        child: Icon(Icons.cloud_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      endDrawer: Drawer(),
      //是否允许手势侧滑 默认yes
      drawerEnableOpenDragGesture: true,
    );
  }
}
