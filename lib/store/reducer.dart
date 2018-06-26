import 'package:flutter/material.dart';
import './redux_state.dart';
import './actions.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    config: configReducer(state.config, action),
  );
}

ConfigState configReducer(ConfigState state, dynamic action) {
  if (action is AppConfigAction) {
    switch (action.displayType) {
      case 0:
        state = new ConfigState(displayType: 0);
        break;
      case 1:
        state = new ConfigState(displayType: 1);
        break;
    }
  }
  return state;
}
