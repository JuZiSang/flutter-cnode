import 'package:flutter/material.dart';

// app 配置相关
class ConfigState {
  AppThemeAction themeType;
  ThemeData theme;

  ConfigState({this.theme, this.themeType});
}

// Action
enum AppThemeAction {
  // 白天主题
  LIGHT_THEME,
  // 夜间主题
  DARK_THEME
}

// 操作
ConfigState configReducer(ConfigState state, dynamic action) {
  if (action is AppThemeAction) {
    switch (action) {
      case AppThemeAction.LIGHT_THEME:
        state = new ConfigState(
          theme: ThemeData.light().copyWith(
                primaryColor: new Color(0xff333333),
                accentColor: new Color(0xff333333),
              ),
          themeType: action,
        );
        break;
      case AppThemeAction.DARK_THEME:
        state = new ConfigState(
          theme: ThemeData.dark().copyWith(
                primaryColor: new Color(0xff333333),
                accentColor: new Color(0xff333333),
              ),
          themeType: action,
        );
        break;
    }
  }
  return state;
}
