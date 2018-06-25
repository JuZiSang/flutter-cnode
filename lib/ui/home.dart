import 'package:flutter/material.dart';
import 'home_drawer.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      primary: true,
      appBar: new AppBar(
        title: new Text("CNode社区"),
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            alignment: Alignment.centerLeft,
            tooltip: 'Drawer',
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
      ),
      drawer: new HomeDrawer(),
    );
  }
}
