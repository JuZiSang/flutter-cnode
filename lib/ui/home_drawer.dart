import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader()
        ],
      ),
    );
  }
}

class DrawerHeader extends StatefulWidget {
  @override
  DrawerHeaderState createState() => new DrawerHeaderState();
}

class DrawerHeaderState extends State<DrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.red,
        height: 180.0,
        child: new Stack(
          children: <Widget>[
            new Positioned(
              left: 16.0,
              top: 16.0,
              child: new Container(
                width: 64.0,
                height: 64.0,
                child: new CircleAvatar(
                  radius: 100.0,
                  backgroundImage: new NetworkImage(
                      'https://avatars2.githubusercontent.com/u/14973323?s=460&v=4'),
                ),
              ),
            ),
            new Positioned(
                bottom: 16.0,
                left: 16.0,
                child: new Container(
                    height: 40.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                            'JuZiSang',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 18.0)),
                        new Text('积分：0', style: new TextStyle(
                            color: Colors.white70, fontSize: 14.0),
                        )
                      ],
                    )
                )
            )
          ],
        )
    );
  }
}