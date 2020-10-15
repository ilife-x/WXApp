import 'package:flutter/material.dart';

class Siglechild extends StatelessWidget {
  const Siglechild({
    Key key,
  }) : super(key: key);

  final str = "abcdefghigklmnopqrstuvwxyz";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      primary: true,
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: str
              .split("")
              //每一个字母都用一个Text显示,字体为原来的两倍
              .map((e) => Text(
                    e,
                    textScaleFactor: 2.0,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
