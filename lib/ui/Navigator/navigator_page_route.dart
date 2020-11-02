import 'package:flutter/material.dart';
import 'nomal_navigator_page_route.dart';
import 'custom_leading_navigator_route.dart';
import 'navigator_model.dart';

class NavigatorPageRoute extends StatefulWidget {
  static const String routeName = "\NavigatorPageRoute";

  @override
  _NavigatorPageRouteState createState() => _NavigatorPageRouteState();
}

class _NavigatorPageRouteState extends State<NavigatorPageRoute> {
  String _res = '显示回传数据';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('常规跳转'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$_res'),
            Padding(padding: EdgeInsets.all(8.0)),
            RaisedButton(
              child: Text('跳转1'),
              onPressed: () {
                _jumpToNextPage(context);
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            RaisedButton(
              child: Text('跳转2'),
              onPressed: () {
                _jumpToNextPage2(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  _jumpToNextPage(BuildContext contex) async {
    final result =
        await Navigator.of(contex).push(MaterialPageRoute(builder: (context) {
      return NomalNavigatorPageRoute();
    }));

    setState(() {
      _res = result;
    });
  }

  _jumpToNextPage2(BuildContext context) async {
    // await Navigator.of(context)
    //     .push(MaterialPageRoute(
    //         settings: RouteSettings(arguments: 'hahhh'),
    //         builder: (context) {
    //           return CoustomNavigatorPageRoute(
    //             model: NavigatiroModel("lili", 13),
    //           );
    //         }))
    //     .then((value) {
    //   print(value);
    // });

    await Navigator.pushNamed(context, CoustomNavigatorPageRoute.routeName,
        arguments: 'hhh');
  }
}
