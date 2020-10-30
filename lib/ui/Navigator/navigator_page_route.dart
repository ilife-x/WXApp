import 'package:flutter/material.dart';

class NavigatorPageRoute extends StatefulWidget {
  static const String routeName = "\NavigatorPageRoute";

  @override
  _NavigatorPageRouteState createState() => _NavigatorPageRouteState();
}

class _NavigatorPageRouteState extends State<NavigatorPageRoute> {
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
            RaisedButton(
                child: Text('返回'),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}
