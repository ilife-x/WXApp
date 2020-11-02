import 'package:flutter/material.dart';
import 'package:wxapp/ui/Navigator/navigator_model.dart';

class CoustomNavigatorPageRoute extends StatefulWidget {
  static const String routeName = "/CoustomNavigatorPageRoute";
  // final NavigatiroModel model;

  // const CoustomNavigatorPageRoute({Key key, this.model}) : super(key: key);

  @override
  _CoustomNavigatorPageRouteState createState() =>
      _CoustomNavigatorPageRouteState();
}

class _CoustomNavigatorPageRouteState extends State<CoustomNavigatorPageRoute> {
  @override
  Widget build(BuildContext context) {
    String arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('返回拦截跳转'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$arg'),
            // Text('姓名：${widget.model.name},年龄：${widget.model.age}'),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            RaisedButton(
                child: Text('back'),
                onPressed: () {
                  Navigator.of(context).pop('custom back');
                })
          ],
        ),
      ),
    );
  }
}
