import 'package:flutter/material.dart';
import 'ui/Refresh/refresh_route.dart';
import 'ui/common_route/my_drawer.dart';
import 'ui/common_route/tabbar_route.dart';
import 'ui/gridView_route/builder_gridview.dart';
import 'ui/gridView_route/count_gridview.dart';
import 'ui/gridView_route/extend_gridview.dart';
import 'ui/gridView_route/nomal_extend_gridview.dart';
import 'ui/gridView_route/nomal_gridview.dart';
import 'ui/listView_route/build_listview_route.dart';
import 'ui/listView_route/infinite_listview_route.dart';
import 'ui/listView_route/seperated_listview_route.dart';
import 'ui/listView_route/sigle_listview_route.dart';
import 'ui/sliver_route/custom_scrollview_sliver_route.dart';
import 'ui/sliver_route/scrollcontroller_route.dart';
import 'ui/BaseWidget/button_style.dart';
import 'ui/BaseWidget/form_test_route.dart';
import 'ui/BaseWidget/gradient_route.dart';
import 'ui/BaseWidget/switch_and_checkbox_route.dart';
import 'ui/BaseWidget/text_style_route.dart';
import 'ui/BaseWidget/image_route.dart';
import 'ui/BaseWidget/text_field_route.dart';

class MainRoutes {
  Map<String, WidgetBuilder> get routes {
    return {
      Siglechild.routeName: (context) => Siglechild(),
      ListViewSeparate.routeName: (context) => ListViewSeparate(),
      WuxianListView.routeName: (context) => WuxianListView(),
      ListViewBuilder.routeName: (context) => ListViewBuilder(),
      NomalGridView.routeName: (context) => NomalGridView(),
      NomalGridViewExtend.routeName: (context) => NomalGridViewExtend(),
      ExtendGridView.routeName: (context) => ExtendGridView(),
      CountGridView.routeName: (context) => CountGridView(),
      BuilderGridView.routeName: (context) => BuilderGridView(),
      TabbarRoute.routeName: (context) => TabbarRoute(),
      MyDrawer.routeName: (context) => MyDrawer(),
      CustomScrollViewSliver.routeName: (context) => CustomScrollViewSliver(),
      ScrollcontrollerTestRoute.routeName: (context) =>
          ScrollcontrollerTestRoute(),
      PullToRefreshRoute.routeName: (context) => PullToRefreshRoute(),
      TextStyleRoute.routeName: (context) => TextStyleRoute(),
      ButtonStyleRoute.routeName: (context) => ButtonStyleRoute(),
      ImageRoute.routeName: (context) => ImageRoute(),
      SwitchAndCheckboxroute.routeName: (context) => SwitchAndCheckboxroute(),
      TextFieldRoute.routeName: (context) => TextFieldRoute(),
      FormTestRoute.routeName: (context) => FormTestRoute(),
      GrandientRoute.routeName: (context) => GrandientRoute(),
    };
  }
}
