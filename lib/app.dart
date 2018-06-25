import 'package:flutter/material.dart';
import './router.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CNode',
      theme: new ThemeData(
        primaryColor: new Color(0xff333333),
        accentColor: new Color(0xff333333),
      ),
      routes: buildRouter(),
      initialRoute: '/',
    );
  }
}
