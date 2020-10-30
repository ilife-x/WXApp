import 'dart:ui';

import 'package:flutter/material.dart';

class GranditenButton extends StatelessWidget {
  //宽高
  final double width;
  final double height;

  //渐变色数组
  final List<Color> colors;
  final Widget child;
  final BorderRadius borderRadius;

  final GestureTapCallback onPressed;

  const GranditenButton(
      {Key key,
      this.width,
      this.height,
      this.colors,
      this.borderRadius,
      this.onPressed,
      @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //确保颜色数组不为空
    List<Color> _colors = colors ??
        [
          Theme.of(context).primaryColor,
          Theme.of(context).primaryColorDark ?? Theme.of(context).primaryColor
        ];

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: _colors),
        borderRadius: borderRadius,
      ),
      child: Material(
        //一块透明的材料，用来绘制水墨飞溅和高光
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: _colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: width, height: height),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: DefaultStyle(child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultStyle extends StatelessWidget {
  const DefaultStyle({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        child: child);
  }
}
