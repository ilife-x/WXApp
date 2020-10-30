import 'package:flutter/material.dart';

class NomalNavigatorPageRoute extends StatefulWidget {
  static const String routeName = "\NomalNavigatorPageRoute";

  @override
  _NomalNavigatorPageRouteState createState() =>
      _NomalNavigatorPageRouteState();
}

class _NomalNavigatorPageRouteState extends State<NomalNavigatorPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('常规带参跳转'),
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
