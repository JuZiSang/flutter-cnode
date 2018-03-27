import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader()
        ],
      ),
    );
  }
}

class DrawerHeader extends StatefulWidget {
  @override
  DrawerHeaderState createState() => new DrawerHeaderState();
}

class DrawerHeaderState extends State<DrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(16.0),
      child: new Row(
        children: <Widget>[
          new Align(
            alignment: Alignment.centerLeft,
            child: new Text('Hello'),
          ),
          new Align(
            alignment: Alignment.centerRight,
            child: new Text("Hello"),
          )
        ],
      ),
    );
  }
}