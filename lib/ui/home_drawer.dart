import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<ListTile> listTiles = [];

  /**
   * 头部Header
   */
  Widget _newDrawerHeader() {
    return new DrawerHeader(
        padding: const EdgeInsets.all(0.0),
        decoration: new BoxDecoration(
            image: new DecorationImage(
                fit: BoxFit.fitWidth,
                image: new AssetImage('images/main_nav_header_bg.png'))),
        child: new Stack(
          children: <Widget>[
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              child: new Container(
                padding: EdgeInsets.all(16.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      width: 72.0,
                      height: 72.0,
                      alignment: Alignment.topLeft,
                      child: new CircleAvatar(
                        radius: 36.0,
                        backgroundImage: new NetworkImage(
                            'https://avatars2.githubusercontent.com/u/14973323?s=460&v=4'),
                      ),
                    ),
                    new Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 16.0),
                      child: new Text(
                        'Juzisang',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    new Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 4.0),
                      child: new Text(
                        '积分：0',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.white70,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new Positioned(
              right: 24.0,
              top: 24.0,
              child: new ImageIcon(
                new AssetImage('images/ic_brightness_3_white_24dp.png'),
              ),
            ),
            new Positioned(
              right: 0.0,
              bottom: 16.0,
              child: new FlatButton(
                child: new Text(
                  '注销',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }

  /**
   * 文章ListItem
   */
  Widget _articleListItem() {
    return new Column(
      children: <Widget>[
        new ListTile(
          trailing: new Icon(Icons.forum),
          title: new Text('全部'),
          onTap: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          _newDrawerHeader(),
          _articleListItem(),
        ],
      ),
    );
  }
}

class ListItem {}
