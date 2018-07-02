import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_cnode/http/http_manage.dart';

class ArticleList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ArticleListState();
  }
}

class ArticleListState extends State<ArticleList> {
  List articleList = [];

  _getTopicList() async {
    Response response = await new HttpManage()
        .getTopicList(limit: '10', tab: 'ask', page: '1', mdrender: 'false');
    articleList = response.data['data'];
  }

  @override
  void initState() {
    _getTopicList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: articleList.length,
      itemBuilder: (context, index) {
        return new ArticleItem(articleList[index]);
      },
    );
  }
}

class ArticleItem extends StatelessWidget {
  var articleList;

  ArticleItem(articleList);

  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}
