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
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop("123");
      },
      child: Scaffold(
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
                  child: Text('返回1'),
                  onPressed: () {
                    _clickBack(context);
                  })
            ],
          ),
        ),
      ),
    );
  }

//点击返回按钮
  _clickBack(BuildContext context) {
    Navigator.of(context).pop("hahahah");
  }
}
