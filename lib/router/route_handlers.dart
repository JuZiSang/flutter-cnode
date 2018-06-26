import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_cnode/ui/home.dart';
import 'package:flutter_cnode/ui/launch.dart';

var homeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new Home();
});

var launchHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new Launch();
});
