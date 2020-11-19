import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetWorkTestPage extends StatefulWidget {
  static const String routeName = "\NetWorkTestPage";

  @override
  _NetWorkTestPageState createState() => _NetWorkTestPageState();
}

class _NetWorkTestPageState extends State<NetWorkTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求"),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: Colors.white,
        child: FloatingActionButton(
          child: Text('请求'),
          onPressed: () {
            Dio dio = Dio();
          },
        ),
      ),
    );
  }
}
