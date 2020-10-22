import 'package:flutter/material.dart';

class ButtonStyleRoute extends StatefulWidget {
  @override
  _ButtonStyleRouteState createState() => _ButtonStyleRouteState();
}

class _ButtonStyleRouteState extends State<ButtonStyleRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Style'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("flatbutton 扁平按钮"),
            FlatButton(onPressed: () {}, child: Text('flatButton')),
            Text('RaisedButton 悬浮按钮'),
            RaisedButton(
              onPressed: () {},
              child: Text('raised button'),
            ),
            Text('outLineButton 悬浮按钮'),
            OutlineButton(
              onPressed: () {},
              child: Text('nomal'),
            ),
            Text('iconButton 图标按钮，不包含文字'),
            Icon(
              Icons.home,
              color: Colors.purple,
              size: 40,
            ),
            Text('自定义按钮，'),
            FlatButton(
              onPressed: () {},
              child: Text('自定义按钮'),
              color: Colors.blue,
              highlightColor: Colors.purple[500],
              //背景是深色，这里就是暗模式，方便字体可以看到
              colorBrightness: Brightness.dark,
              splashColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('自定义按钮'),
              color: Colors.blue,
              highlightColor: Colors.purple[500],
              //背景是深色，这里就是暗模式，方便字体可以看到
              colorBrightness: Brightness.dark,
              splashColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text('背景渐变的按钮通过这种方式不能实现'),
          ]),
    );
  }
}
