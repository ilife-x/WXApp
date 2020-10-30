import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SwitchAndCheckboxroute extends StatefulWidget {
  static const String routeName = "\SwitchAndCheckboxroute";

  @override
  _SwitchAndCheckboxrouteState createState() => _SwitchAndCheckboxrouteState();
}

class _SwitchAndCheckboxrouteState extends State<SwitchAndCheckboxroute> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;
  bool _triCheckboxSelected = false;

  String _switchState = "关";
  String _checkBoxState = "取消";
  String _triCheckBoxState = "取消";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch an checkbox'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$_switchState'),
            Switch(
                value: _switchSelected,
                //滑块关闭
                activeColor: Colors.red,
                activeTrackColor: Colors.purple,
                inactiveThumbColor: Colors.orange,
                onChanged: (newValue) {
                  if (mounted) {
                    setState(() {
                      _switchSelected = newValue;
                      _switchState = _switchSelected ? "开" : "关";
                    });
                  }
                }),
            Text("$_checkBoxState"),
            Checkbox(
                value: _checkboxSelected,
                //对勾颜色
                checkColor: Colors.red,
                //背景颜色
                activeColor: Colors.green,
                onChanged: (bool newvalue) {
                  if (mounted) {
                    setState(() {
                      _checkboxSelected = newvalue;
                      _checkBoxState = _checkboxSelected ? "选中" : "取消";
                    });
                  }
                }),
            Text("$_triCheckBoxState"),
            Checkbox(
                value: _triCheckboxSelected,
                tristate: true,
                onChanged: (newvalue) {
                  setState(() {
                    _triCheckboxSelected = newvalue;
                    if (newvalue == true) {
                      _triCheckBoxState = "选中";
                    } else if (newvalue == false) {
                      _triCheckBoxState = "取消";
                    } else {
                      //newValue == null ,为中间态
                      _triCheckBoxState = "中间态";
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
