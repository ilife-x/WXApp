import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextFieldRoute extends StatefulWidget {
  @override
  _TextFieldRouteState createState() => _TextFieldRouteState();
}

class _TextFieldRouteState extends State<TextFieldRoute> {
  TextEditingController _controller;
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    //_controller 除了可以监听输入，还可以设置初始值
    _controller.text = "43714973891";
    _controller.selection =
        //文字选中范围
        TextSelection(baseOffset: 2, extentOffset: _controller.text.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Container(
                  child: TextField(
                    autofocus: true,
                    focusNode: _focusNode1,

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "用户名",
                        labelStyle: TextStyle(fontSize: 20, color: Colors.red),
                        hintText: "请输入用户名",
                        // hintStyle:
                        //     TextStyle(fontSize: 18, color: Colors.purple),
                        icon: Icon(Icons.people)),

                    //监听文字改变
                    onChanged: (v) {
                      print("$v");
                    },
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.green, width: 1.0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode2,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码",
                      icon: Icon(Icons.lock)),
                  //小黑点
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                    color: Colors.green,
                    child: Text('移动焦点'),
                    onPressed: () {
                      if (_focusNode1.hasFocus) {
                        //切换焦点
                        FocusScope.of(context).requestFocus(_focusNode2);
                      } else {
                        FocusScope.of(context).requestFocus(_focusNode1);
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                    color: Colors.yellow[200],
                    child: Text('取消焦点'),
                    onPressed: () {
                      //取消焦点
                      _focusNode1.unfocus();
                      _focusNode2.unfocus();
                    }),
              )
            ],
          )),
    );
  }
}
