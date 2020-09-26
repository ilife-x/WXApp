import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "abcdefghigklmnopqrstuvwxyz";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      home: Scaffold(
        appBar: AppBar(
          title: Text("myApp"),
        ),
        // body: Siglechild(str: str),
        // body: ListViewBuilder(),
        body: ListViewSeparate(),
        // body: WuxianListView(),
      ),
    );
  }
}

class WuxianListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("商品列表"),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
        ))
      ],
    );
  }
}

class ListViewSeparate extends StatelessWidget {
  const ListViewSeparate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget diver1 = Divider(
      color: Colors.green,
    );

    Widget diver2 = Divider(
      color: Colors.red,
    );

    return ListView.separated(
      itemBuilder: (BuildContext contex, int index) {
        return Container(
          height: 30,
          child: ListTile(
            title: Text("第 $index 行"),
          ),
        );
      },
      separatorBuilder: (BuildContext contex, int index) {
        return index % 2 == 0 ? diver1 : diver2;
      },
      itemCount: 30,
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemExtent: 50,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("第 $index 行"),
        );
      },
    );
  }
}

class Siglechild extends StatelessWidget {
  const Siglechild({
    Key key,
    @required this.str,
  }) : super(key: key);

  final String str;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      primary: true,
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: str
              .split("")
              //每一个字母都用一个Text显示,字体为原来的两倍
              .map((e) => Text(
                    e,
                    textScaleFactor: 2.0,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
