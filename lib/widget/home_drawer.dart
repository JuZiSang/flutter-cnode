import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeDrawer extends StatelessWidget {
  // 选中的控件
  String selectItemMenu;

  // 选择的item
  Function onSelectListener;

  // 单间下面的按钮
  Function onBottomClickListener;

  // 模式切换
  Function onAppDisplayType;

  final List<ListItem> articleListTiles = [
    new ListItem(Icons.forum, '全部'),
    new ListItem(Icons.thumb_up, '精华'),
    new ListItem(Icons.share, '分享'),
    new ListItem(Icons.face, '回答'),
    new ListItem(Icons.local_mall, '招聘'),
    new ListItem(Icons.bug_report, '测试'),
  ];

  final List<ListItem> bottomListTiles = [
    new ListItem(Icons.perm_phone_msg, '消息'),
    new ListItem(Icons.notifications, '设置'),
    new ListItem(Icons.error, '关于'),
  ];

  HomeDrawer({
    @required this.selectItemMenu,
    this.onSelectListener,
    this.onBottomClickListener,
    this.onAppDisplayType,
  });

  // 头部Header
  Widget _newDrawerHeader(context) {
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
//                      child: new CachedNetworkImage(
//                        imageUrl:
//                            'https://avatars2.githubusercontent.com/u/14973323?s=460&v=4',
//                        placeholder: new CircularProgressIndicator(),
//                        errorWidget: new Icon(Icons.error),
//                        width: 72.0,
//                        height: 72.0,
//                        fit: BoxFit.fill,
//                      ),
                      child: new CircleAvatar(
                        radius: 36.0,
//                        child: new CachedNetworkImage(
//                            placeholder: new CircularProgressIndicator(
//                              backgroundColor: Colors.white70,
//                            ),
//                            errorWidget: new Icon(Icons.error),
//                            imageUrl:
//                                'https://avatars2.githubusercontent.com/u/14973323?s=460&v=4'),
                        backgroundImage: new CachedNetworkImageProvider(
                            'http://www.juzisang.com/usr/uploads/2017/11/1677554480.jpg'),
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
              child: new GestureDetector(
                onTap: onAppDisplayType,
                child: new ImageIcon(
                  new AssetImage('images/ic_brightness_3_white_24dp.png'),
                ),
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

  // 文章ListItem
  Widget _articleListItem(context) {
    return new ListTileTheme(
      selectedColor: new Color(0xff80bd01),
      style: ListTileStyle.drawer,
      dense: true,
      child: new Column(
        children: <Widget>[
          new Column(
            children: articleListTiles.map((item) {
              return new ListTile(
                leading: new Icon(item.icon),
                selected: selectItemMenu == item.title,
                title: new Text(
                  item.title,
                  style: new TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  if (onSelectListener != null) {
                    onSelectListener(item.title);
                  }
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
          new Divider(
            color: Theme.of(context).dividerColor,
          ),
          new Column(
            children: bottomListTiles.map((item) {
              return new ListTile(
                leading: new Icon(item.icon),
                title: new Text(
                  item.title,
                  style: new TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  if (onBottomClickListener != null) {
                    onBottomClickListener(item.title);
                  }
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          _newDrawerHeader(context),
          _articleListItem(context),
        ],
      ),
    );
  }
}

class ListItem {
  IconData icon;
  String title;

  ListItem(this.icon, this.title);
}
