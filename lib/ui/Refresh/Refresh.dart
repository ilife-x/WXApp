import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshRoute extends StatefulWidget {
  @override
  _PullToRefreshRouteState createState() => _PullToRefreshRouteState();
}

class _PullToRefreshRouteState extends State<PullToRefreshRoute> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await Future.delayed(Duration(microseconds: 1000));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(microseconds: 1000));
    items.add((items.length + 1).toString());

    //It is an error to call [setState] unless [mounted] is true
    if (mounted) {
      setState(() {});
    }
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        footer: CustomFooter(builder: (BuildContext context, LoadStatus mode){
          
          Widget body;
          if(mode == LoadStatus.idle){
            body = Text("上拉加载");
          }
          else if(mode == LoadStatus.loading){
            body = CupertinoActivityIndicator();
          }
          return Container(
            height: 55,
            child: body,
            );
        },
        ),
    );
  }
}
