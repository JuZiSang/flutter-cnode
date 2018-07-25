library store;

import 'package:flutter/material.dart';
import 'modules/config.dart';

export 'package:redux/redux.dart';
export 'package:flutter_redux/flutter_redux.dart';
export 'modules/config.dart';

class AppState {
  ConfigState config;

  AppState({
    @required this.config,
  });

  static AppState getInit() {
    return new AppState(
      config: new ConfigState(
        // 主题
        theme: ThemeData.light().copyWith(
              primaryColor: new Color(0xff333333),
              accentColor: new Color(0xff333333),
            ),
        themeType: AppThemeAction.LIGHT_THEME,
      ),
    );
  }
}

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    config: configReducer(state.config, action),
  );
}
