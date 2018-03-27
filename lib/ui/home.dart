import 'package:flutter/material.dart';
import 'home_drawer.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CNode社区"),
        leading: new Icon(Icons.menu),
      ),
      drawer: new HomeDrawer(),
    );
  }
}