import 'package:flutter/material.dart';

class CoustomNavigatorPageRoute extends StatefulWidget {
  static const String routeName = "\CoustomNavigatorPageRoute";

  @override
  _CoustomNavigatorPageRouteState createState() =>
      _CoustomNavigatorPageRouteState();
}

class _CoustomNavigatorPageRouteState extends State<CoustomNavigatorPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('返回拦截跳转'),
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
