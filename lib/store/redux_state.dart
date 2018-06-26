import 'package:flutter/material.dart';

class AppState {
  ConfigState config;

  AppState({
    @required this.config,
  });

  static AppState getInit() {
    return new AppState(
      config: new ConfigState(
        // 主题
        displayType: 1,
      ),
    );
  }
}

class ConfigState {
  int displayType;

  ConfigState({this.displayType});
}
