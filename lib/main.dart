import 'package:flutter/material.dart';
import 'package:wxapp/ui/Refresh/Refresh.dart';
import 'package:wxapp/ui/common_route/my_drawer.dart';
import 'package:wxapp/ui/common_route/tabBarRoute.dart';
import 'package:wxapp/ui/gridView_route/builderGridView.dart';
import 'package:wxapp/ui/gridView_route/countGridView.dart';
import 'package:wxapp/ui/gridView_route/extendGridView.dart';
import 'package:wxapp/ui/gridView_route/nomalExtendGridView.dart';
import 'package:wxapp/ui/gridView_route/nomalGridView.dart';
import 'package:wxapp/ui/listView_route/builderListView.dart';
import 'package:wxapp/ui/listView_route/infiniteListView.dart';
import 'package:wxapp/ui/listView_route/separateListView.dart';
import 'package:wxapp/ui/listView_route/sigleListView.dart';
import 'package:wxapp/ui/sliver_route/CustomScrollViewSliver.dart';
import 'package:wxapp/ui/sliver_route/scrollController_testRoute.dart';
import 'package:wxapp/ui/BaseWidget/ButtonStyle.dart';

import 'ui/BaseWidget/SwichAndcheckBoxRoute.dart';
import 'ui/BaseWidget/TextStyle.dart';
import 'ui/BaseWidget/ImageRoute.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController controller = ScrollController();

  //pages
  Siglechild _siglechildPage = Siglechild();
  ListViewSeparate _listViewSeparatePage = ListViewSeparate();
  WuxianListView _wuxianListView = WuxianListView();
  ListViewBuilder _listViewBuilder = ListViewBuilder();
  NomalGridView _nomalGridView = NomalGridView();
  NomalGridViewExtend _nomalGridViewExtend = NomalGridViewExtend();
  ExtendGridView _extendGridView = ExtendGridView();
  CountGridView _countGridView = CountGridView();
  BuilderGridView _builderGridView = BuilderGridView();
  // ignore: non_constant_identifier_names
  TabbarRoute _TabbarRoute = TabbarRoute();
  MyDrawer _myDrawer = MyDrawer();
  CustomScrollViewSliver _customScrollViewSliver = CustomScrollViewSliver();
  ScrollcontrollerTestRoute _scrollcontrollerTestRoute =
      ScrollcontrollerTestRoute();
  PullToRefreshRoute _pullToRefreshRoute = PullToRefreshRoute();
  TextStyleRoute _textStyleRoute = TextStyleRoute();
  ButtonStyleRoute _buttonStyleRoute = ButtonStyleRoute();
  ImageRoute _imageRoute = ImageRoute();
  SwitchAndCheckboxroute _switchAndCheckboxroute = SwitchAndCheckboxroute();

//widget 数组
  List pageList = <Widget>[];

  @override
  void initState() {
    super.initState();
    pageList.add(_siglechildPage);
    pageList.add(_listViewSeparatePage);
    pageList.add(_wuxianListView);
    pageList.add(_listViewBuilder);
    pageList.add(_nomalGridView);
    pageList.add(_nomalGridViewExtend);
    pageList.add(_extendGridView);
    pageList.add(_countGridView);
    pageList.add(_builderGridView);
    pageList.add(_TabbarRoute);
    pageList.add(_myDrawer);
    pageList.add(_customScrollViewSliver);
    pageList.add(_scrollcontrollerTestRoute);
    pageList.add(_pullToRefreshRoute);
    pageList.add(_textStyleRoute);
    pageList.add(_buttonStyleRoute);
    pageList.add(_imageRoute);
    pageList.add(_switchAndCheckboxroute);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          controller: controller,
          itemCount: pageList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(pageList[index].toString()),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return pageList[index];
                }));
              },
            );
          },
        ),
      ),
    );
  }
}
