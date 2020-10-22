import 'package:flutter/material.dart';
class BaseRoute extends StatefulWidget {
  @override
  _BaseRouteState createState() => _BaseRouteState();
}

class _BaseRouteState extends State<BaseRoute> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Container(),
    );
  }
}
