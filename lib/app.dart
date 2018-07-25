import 'package:flutter/material.dart';
import 'package:flutter_cnode/store/store.dart';
import 'package:flutter_cnode/router/router.dart';

class App extends StatelessWidget {
  final Store<AppState> store = new Store<AppState>(
    appReducer,
    initialState: AppState.getInit(),
  );

  App() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new StoreConnector<AppState, AppTheme>(
        converter: (store) => store.state.config.theme,
        builder: (context, themeType) {
          ThemeData theme = themeType == AppTheme.LIGHT_THEME
              ? ThemeData.light().copyWith(
                    primaryColor: new Color(0xff333333),
                    accentColor: new Color(0xff333333),
                  )
              : ThemeData.dark().copyWith(
                    primaryColor: new Color(0xff333333),
                    accentColor: new Color(0xff333333),
                  );

          return new MaterialApp(
            title: 'CNode',
            theme: theme,
            onGenerateRoute: Application.router.generator,
          );
        },
      ),
    );
  }
}
