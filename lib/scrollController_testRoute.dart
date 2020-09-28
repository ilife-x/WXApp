import 'package:flutter/material.dart';

class ScrollcontrollerTestRoute extends StatefulWidget {
  @override
  _ScrollcontrollerTestRouteState createState() =>
      _ScrollcontrollerTestRouteState();
}

class _ScrollcontrollerTestRouteState extends State<ScrollcontrollerTestRoute> {
  ScrollController _controller = ScrollController(keepScrollOffset: true);
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.offset <= 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset > 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // 避免内存泄漏，销毁控制器
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scrollController"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          key: PageStorageKey("1"),
          controller: _controller,
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("line number $index"),
            );
          },
        ),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              onPressed: () {
                _controller.animateTo(.0,
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Icon(Icons.arrow_upward),
            ),
    );
  }
}
