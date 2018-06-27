import 'package:flutter/material.dart';
import 'package:flutter_cnode/widget/widget.dart' show HomeDrawer;
import 'package:flutter_cnode/store/store.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // 当前选中的Menu
  String selectItemMenu = '全部';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      primary: true,
      appBar: new AppBar(
        title: new Text(selectItemMenu == '全部' ? "CNode社区" : selectItemMenu),
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            alignment: Alignment.centerLeft,
            tooltip: 'Drawer',
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
      ),
      drawer: new StoreConnector<AppState, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(new AppConfigAction(
              displayType: store.state.config.displayType == 1 ? 0 : 1));
        },
        builder: (context, callback) {
          return new HomeDrawer(
            selectItemMenu: selectItemMenu,
            onSelectListener: (item) {
              setState(() {
                selectItemMenu = item;
              });
            },
            onBottomClickListener: (item) {
              print(item);
            },
            onAppDisplayType: () {
              callback();
            },
          );
        },
      ),
      body: null,
    );
  }
}
