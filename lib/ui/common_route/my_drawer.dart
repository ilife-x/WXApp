import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  static const String routeName = "\MyDrawer";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ClipOval(
                          child: Image.asset(
                            "lib/images/avatar.png",
                            width: 80,
                          ),
                        ),
                      ),
                      Text(
                        "name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("设置"),
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text("帮助"),
                    )
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
