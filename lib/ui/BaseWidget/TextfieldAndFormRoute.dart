import 'package:flutter/material.dart';

class TextfieldAndFormRoute extends StatefulWidget {
  @override
  _TextfieldAndFormRouteState createState() => _TextfieldAndFormRouteState();
}

class _TextfieldAndFormRouteState extends State<TextfieldAndFormRoute> {
  TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    //_controller 除了可以监听输入，还可以设置初始值
    _controller.text = "43714973891";
    _controller.selection =
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
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "用户名",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.red),
                      hintText: "请输入用户名",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.purple),
                      icon: Icon(Icons.people)),
                  //监听文字改变
                  onChanged: (v) {
                    print("$v");
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: TextField(
                  controller: _controller,

                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码",
                      icon: Icon(Icons.lock)),
                  //小黑点
                  // obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                    color: Colors.green, child: Text('移动焦点'), onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                    color: Colors.yellow[200],
                    child: Text('取消焦点'),
                    onPressed: () {}),
              )
            ],
          )),
    );
  }
}
