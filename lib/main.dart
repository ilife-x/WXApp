import 'package:flutter/material.dart';
import 'package:wxapp/ui/listView_route/sigleListView.dart';
import '';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          controller: controller,
          itemCount: 30,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('$index'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Siglechild();
                }));
              },
            );
          },
        ),
      ),
    );
  }
}
