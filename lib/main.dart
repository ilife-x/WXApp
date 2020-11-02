import 'package:flutter/material.dart';
import 'main_routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController controller = ScrollController();
  List<String> pageList = [];
  @override
  void initState() {
    super.initState();
    pageList = MainRoutes().routes.keys.toList();
  }

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
          itemCount: pageList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(pageList[index].toString().substring(0)),
              onTap: () {
                Navigator.of(context).pushNamed(pageList[index]);
              },
            );
          },
        ),
      ),
      initialRoute: "/",
      routes: MainRoutes().routes,
    );
  }
}
