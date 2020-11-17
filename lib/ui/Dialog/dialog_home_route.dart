import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wxapp/ui/listView_route/build_listview_route.dart';

class DialogHomePageRoute extends StatefulWidget {
  static final String routeName = "\DialogHomePageRoute";
  @override
  _DialogHomePageRouteState createState() => _DialogHomePageRouteState();
}

class _DialogHomePageRouteState extends State<DialogHomePageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          children: [
            RaisedButton(
              child: Text("弹窗一"),
              onPressed: () async {
                // showDialog 是系统方法，是个Future ，有返回值
                bool show = await showDeleteConfirmDialog1();
                if (show == null) {
                  print('取消删除');
                } else {
                  print('确认删除');
                }
              },
            ),
            RaisedButton(
              child: Text('弹窗二'),
              onPressed: () {
                changeLaguageDialog();
              },
            ),
            RaisedButton(
              child: Text('弹窗三'),
              onPressed: () {
                showListDialog();
              },
            ),
            RaisedButton(
              child: Text('弹窗四'),
              onPressed: () {
                showListDialog2();
              },
            ),
            RaisedButton(
              child: Text('弹窗五'),
              onPressed: () {
                showCustomDialog();
              },
            ),
            RaisedButton(
              child: Text('弹窗六'),
              onPressed: () {
                showCustomDialog2();
              },
            ),
            RaisedButton(
              child: Text('弹窗七'),
              onPressed: () {
                showGenerDialog();
              },
            ),
            RaisedButton(
              child: Text('弹窗八,缩放动画'),
              onPressed: () {
                showScaleDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

//弹窗八
  Future<void> showScaleDialog() {
    return showCustomAlert(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您确定要删除当前文件吗?"),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                // 执行删除操作
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

//弹窗七（有默认渐变动画）
  Future<void> showGenerDialog() {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "背景色",
      pageBuilder: (context, animation, secondaryAnimation) {
        return UnconstrainedBox(
          child: Container(
            color: Colors.blue[300],
            width: 100,
            height: 50,
          ),
        );
      },
    );
  }

//弹窗六
  Future<void> showCustomDialog2() {
    //showDialog 它是Material组件库中提供的一个打开Material风格对话框的方法
    return showDialog(
        context: context,
        //控制点击阴影部分，弹窗是否可以消失，默认yes
        // barrierDismissible: false,
        builder: (context) {
          //自定义弹窗样式
          return UnconstrainedBox(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              width: 100,
              height: 50,
            ),
          );
        });
  }

//弹窗五
  Future<void> showCustomDialog() async {
    int index = await showDialog(
        context: context,
        builder: (context) {
          //ListView 的弹窗需要用Dialog类包裹
          //这里将Dialog 抽取成了变量
          var child = Column(
            children: [
              ListTile(
                title: Text('标题'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemExtent: 60,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          '---click $index 行----------------',
                          maxLines: 1,
                        ),
                        onTap: () {
                          //方式一
                          Navigator.of(context).pop(index);
                        },
                      );
                    }),
              )
            ],
          );
          return Dialog(
            child: UnconstrainedBox(
              constrainedAxis: Axis.vertical,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200),
                child: Material(
                  child: child,
                  type: MaterialType.card,
                ),
              ),
            ),
          );
        });

    if (index != null) {
      print('点击了第 $index 行');
    }
  }

  ///弹窗四

  Future<void> showListDialog2() async {
    int index = await showDialog(
        context: context,
        builder: (context) {
          //ListView 的弹窗需要用Dialog类包裹
          //这里将Dialog 抽取成了变量
          var child = Column(
            children: [
              ListTile(
                title: Text('标题'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemExtent: 60,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('---$index 行'),
                        onTap: () {
                          //方式一
                          Navigator.of(context).pop(index);
                        },
                      );
                    }),
              )
            ],
          );
          return Dialog(child: child);
        });

    if (index != null) {
      print('点击了第 - $index - 行');
      Navigator.of(context).pop();
    }
  }

  ///弹窗三

  Future<void> showListDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          //ListView 的弹窗需要用Dialog类包裹
          return Dialog(
            child: Column(
              children: [
                ListTile(
                  title: Text('标题'),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 30,
                      itemExtent: 60,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('---$index 行'),
                          onTap: () {
                            //方式一
                            print('点击了第$index行');
                            Navigator.of(context).pop();
                          },
                        );
                      }),
                )
              ],
            ),
          );
        });
  }

  /// 弹窗二
  Future<void> changeLaguageDialog() async {
    int i = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('请选择语言'),
            children: [
              //它相当于一个FlatButton，只不过按钮文案是左对齐的，并且padding较小
              SimpleDialogOption(
                padding: EdgeInsets.all(8),
                child: Text('简体中文'),
                onPressed: () {
                  Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(8),
                child: Text('美式英语'),
                onPressed: () {
                  Navigator.of(context).pop(2);
                },
              )
            ],
          );
        });
    if (i != null) {
      print("选择了 ${i == 1 ? "简体中文" : "美式英语"}");
    }
  }

//弹窗一
  Future<bool> showDeleteConfirmDialog1() {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text('确定要删除这些内容吗？'),
            actions: [
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  //提供返回值
                  Navigator.of(context).pop(true);
                },
              )
            ],
          );
        });
  }

  Future<Void> showCustomAlert<T>(
      {@required BuildContext context,
      bool barrierDismissible = true,
      WidgetBuilder builder}) {
    final ThemeData theam = Theme.of(context, shadowThemeOnly: true);

    return showGeneralDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.black87,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: Duration(microseconds: 150),
      //自定义动画
      transitionBuilder: _buildMaterialDialogTransitions,

      pageBuilder: (BuildContext context, animation, secondaryAnimation) {
        final Builder pagechild = Builder(
          builder: builder,
        );
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return theam != null
                ? Theme(
                    data: theam,
                    child: pagechild,
                  )
                : pagechild;
          }),
        );
      },
    );
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    // 使用缩放动画
    return ScaleTransition(
      //自定义的动画
      scale: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }
}
