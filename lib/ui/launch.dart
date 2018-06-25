import 'package:flutter/material.dart';
import 'dart:async';

class Launch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LaunchState();
}

class LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/launch_bg.png'),
        ),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: Image.asset(
              'images/logo.png',
              alignment: Alignment.center,
            ),
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
          ),
          new Container(
            margin: EdgeInsets.only(top: 8.0),
            child: new Text(
              'cnodejs.org',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 32.0),
            child: new Text(
              'Node.js专业中文社区',
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    new Timer(new Duration(milliseconds: 3000), () {
      print('timer');
      Navigator.pushReplacementNamed(this.context, '/home');
    });
    super.initState();
  }
}
