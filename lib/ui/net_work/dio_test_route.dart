import 'package:flutter/material.dart';

class NetWorkListRoute extends StatefulWidget {
  static const String routeName = '\NetWorkListRoute';

  @override
  _NetWorkListRouteState createState() => _NetWorkListRouteState();
}

class _NetWorkListRouteState extends State<NetWorkListRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("网络请求")),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 30,
          itemExtent: 100,
          itemBuilder: (buildContext, index) {
            return ListTile(
              tileColor: Colors.blue,
              title: Text("hello world"),
              leading: Image.network(
                'https://picsum.photos/100/100?grayscale',
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }
}
