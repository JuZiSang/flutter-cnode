import 'package:flutter/material.dart';
import './actions.dart';

// App 总数据
class AppState {
  ConfigState config;

  AppState({
    @required this.config,
  });

  static AppState getInit() {
    return new AppState(
      config: new ConfigState(
        // 主题
        theme: AppTheme.LIGHT_THEME,
      ),
    );
  }
}

// app 配置相关
class ConfigState {
  AppTheme theme;

  ConfigState({this.theme});
}
