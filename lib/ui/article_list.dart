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
  _getTopicList() async {
    Response response = await new HttpManage()
        .getTopicList(limit: '10', tab: 'ask', page: '1', mdrender: 'false');
    response.data['data'].forEach((item) => print(item['content']));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getTopicList();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: null,
    );
  }
}
