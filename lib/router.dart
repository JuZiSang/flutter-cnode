import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/launch.dart';

buildRouter() {
  Map<String, WidgetBuilder> router = {
    '/': (BuildContext context) => new Launch(),
    '/home': (BuildContext context) => new Home()
  };

  return router;
}
