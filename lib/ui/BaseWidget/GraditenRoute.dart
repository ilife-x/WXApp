import 'package:flutter/material.dart';
import 'GrandientButton.dart';

class GrandientRoute extends StatefulWidget {
  @override
  _GrandientRouteState createState() => _GrandientRouteState();
}

class _GrandientRouteState extends State<GrandientRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义渐变按钮'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                width: 200,
                height: 50,
                colors: [Colors.yellow, Colors.purple],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                width: 200,
                height: 50,
                colors: [Colors.red, Colors.green],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20), bottom: Radius.circular(0)),
                width: 200,
                height: 50,
                colors: [Colors.yellow, Colors.purple],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(0), bottom: Radius.circular(20)),
                width: 200,
                height: 50,
                colors: [Colors.yellow, Colors.purple],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius:
                    BorderRadius.only(topRight: Radius.elliptical(20, 20)),
                width: 200,
                height: 50,
                colors: [Colors.blue[300], Colors.blueAccent],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                width: 200,
                height: 50,
                colors: [Colors.blue[300], Colors.blueAccent],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.elliptical(20, 20)),
                width: 200,
                height: 50,
                colors: [Colors.blue[300], Colors.blueAccent],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.elliptical(20, 40)),
                width: 200,
                height: 50,
                colors: [Colors.blue[300], Colors.blueAccent],
                onPressed: () {
                  print('submit click');
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              GranditenButton(
                child: Text('submint'),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                width: 200,
                height: 200,
                colors: [Colors.yellow, Colors.purple],
                onPressed: () {
                  print('submit click');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
