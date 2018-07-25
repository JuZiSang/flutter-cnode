import 'package:flutter/material.dart';
import './redux_state.dart';
import './actions.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    config: configReducer(state.config, action),
  );
}

ConfigState configReducer(ConfigState state, dynamic action) {
  if (action is AppTheme) {
    state = new ConfigState(theme: action);
  }
  return state;
}
