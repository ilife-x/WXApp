import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextStyleRoute extends StatefulWidget {
  @override
  _TextStyleRouteState createState() => _TextStyleRouteState();
}

class _TextStyleRouteState extends State<TextStyleRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本及样式'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //因为是在column 内，默认是占据自身内容宽度，包裹内容，居中显示
          Text(
            "hello",
          ),

          Padding(padding: EdgeInsets.only(top: 10)),
          //默认文本从左到右 textDirection.rtl
          Text(
            "hello world " * 10,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "hello world " * 10,
            overflow: TextOverflow.fade,
            maxLines: 1,
          ),
          Text(
            "hello world " * 10,
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
          Text(
            "hello world " * 10,
            overflow: TextOverflow.visible,
            maxLines: 1,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),

          Container(
            height: 50,
            width: 300,
            color: Colors.orange,
            child: Text(
              "hello world ",
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: Colors.blue,
            child: Text(
              "hello world ",
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),

          Container(
            height: 50,
            color: Colors.pink,
            child: Text(
              'hello world ',
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            height: 50,
            color: Colors.pink[100],
            child: Text(
              'hello world ',
              style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: "Courier",
                  fontSize: 18.0,
                  // background: Paint()..color = Colors.red,
                  //效果同上
                  backgroundColor: Colors.red,
                  //高度因子
                  height: 1.2,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ),
          Container(
            height: 50,
            color: Colors.orange,
            child: Text(
              'hello world ',
              style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: "Courier",
                  fontSize: 18.0,
                  // background: Paint()..color = Colors.red,
                  //效果同上
                  backgroundColor: Colors.red,
                  //高度因子,并非高度
                  height: 1.2,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: Colors.purple,
            child: Text(
              'hello world ',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 1,
                decorationColor: Colors.red,
              ),
            ),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "https://"),
            TextSpan(
                text: "www.baidu.com",
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()),
          ])),
          Padding(padding: EdgeInsets.only(top: 10)),

          DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
              child: Column(
                children: [
                  Text("I'm jack"),
                  Text("you're lili"),
                  Text(
                    "let's go home",
                    style: TextStyle(
                      color: Colors.blue,
                      // fontSize: 16,
                      //完全不继承默认属性,打开此开关，如果个别的属性不继承，重新设置具体的某个属性即可
                      inherit: false,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
