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
      child: new StoreConnector<AppState, ThemeData>(
        converter: (store) => store.state.config.theme,
        builder: (context, theme) {
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
