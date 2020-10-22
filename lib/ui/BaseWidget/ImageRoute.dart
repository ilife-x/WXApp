import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget {
  @override
  _ImageRouteState createState() => _ImageRouteState();
}

class _ImageRouteState extends State<ImageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageRoute'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'png',
            style: TextStyle(fontSize: 18),
          ),
          Image(
            image: AssetImage('lib/images/avatar.png'),
            width: 200,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Text(
            'jpg',
            style: TextStyle(fontSize: 18),
          ),
          Image(
            image: AssetImage('lib/images/sean.jpg'),
            width: 200,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Text(
            'webP-未能显示出来',
            style: TextStyle(fontSize: 18),
          ),
          Image(
            image: AssetImage(
              'lib/images/balt.webp',
            ),
            width: 200,
            color: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Text(
            '网络加载',
            style: TextStyle(fontSize: 18),
          ),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Image(
            image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            ),
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
