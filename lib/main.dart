import 'package:flutter/material.dart';
import 'scrollController_testRoute.dart';

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
        // body: ListViewSeparate(),
        // body: WuxianListView(),
        // body: NomalGridView(),
        // body: CountGridView(),
        // body: NomalGridViewExtend(),
        // body: ExtendGridView(),
        // body: BuilderGridView(),
        // body: CustomScrollViewSliver(),
        // body: ScrollcontrollerTestRoute(),
        body: TestButton(),
        // body: NotificationListener(child: Stack(alignment: Alignment.center,),
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListTile(
          title: Text("click"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return ScrollcontrollerTestRoute();
            }));
          },
        ),
      ),
    );
  }
}

class CustomScrollViewSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          ///应用程序栏是否应该在滚动视图开始时保持可见。
          pinned: true,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("demo"),
            background: Image.asset(
              "lib/images/avatar.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext contex, int index) {
                return Container(
                  color: Colors.cyan[100 * ((index % 9) + 1)],
                  child: Text("$index"),
                  alignment: Alignment.center,
                );
              }, childCount: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              )),
        ),
        SliverFixedExtentList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.cyan[100 * ((index % 9) + 1)],
                child: Text("$index"),
              );
            }, childCount: 20),
            itemExtent: 50)
      ],
    );
  }
}

class BuilderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.0),
      itemBuilder: (BuildContext context, int index) {
        return Icon(Icons.bike_scooter);
      },
      itemCount: 20,
    );
  }
}

class ExtendGridView extends StatelessWidget {
  const ExtendGridView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 120,
      childAspectRatio: 1.0,
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.baby_changing_station),
        Icon(Icons.bike_scooter),
        Icon(Icons.mobile_friendly),
        Icon(Icons.home),
        Icon(Icons.snooze)
      ],
    );
  }
}

class NomalGridViewExtend extends StatelessWidget {
  const NomalGridViewExtend({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120, childAspectRatio: 1),
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.baby_changing_station),
        Icon(Icons.bike_scooter),
        Icon(Icons.mobile_friendly),
        Icon(Icons.home),
        Icon(Icons.snooze)
      ],
    );
  }
}

class CountGridView extends StatelessWidget {
  const CountGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.baby_changing_station),
        Icon(Icons.bike_scooter),
        Icon(Icons.mobile_friendly),
        Icon(Icons.home),
        Icon(Icons.snooze)
      ],
    );
  }
}

class NomalGridView extends StatelessWidget {
  const NomalGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1),
      children: [
        Icon(Icons.ac_unit),
        Icon(Icons.baby_changing_station),
        Icon(Icons.bike_scooter),
        Icon(Icons.mobile_friendly),
        Icon(Icons.home),
        Icon(Icons.snooze)
      ],
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
