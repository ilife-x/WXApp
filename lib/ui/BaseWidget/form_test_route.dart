import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  static const String routeName = "\FormTestRoute";

  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _passWorlController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormTestRoute'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Form(
            autovalidate: true,
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autocorrect: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '请输入用户名',
                      icon: Icon(Icons.person)),
                  //校验用户名
                  validator: (v) {
                    //tirm（），去掉字符串的收尾空格
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  autocorrect: true,
                  controller: _passWorlController,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      icon: Icon(Icons.lock)),
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  },
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: RaisedButton(
                            child: Text('登录'),
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {
                                print('验证通过');
                              }
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
