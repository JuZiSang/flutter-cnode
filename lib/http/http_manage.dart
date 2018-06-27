import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';

export 'package:dio/dio.dart';

class HttpManage {
  static final HttpManage _singleton = new HttpManage._internal();

  final Dio dio = new Dio(new Options(
    baseUrl: "https://cnodejs.org/api/v1",
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  factory HttpManage() {
    return _singleton;
  }

  HttpManage._internal();

  // 获取首页列表
  getTopicList({page: '1', tab: '', limit: '10', mdrender: 'false'}) {
    return dio.get(
      '/topics',
      data: {
        'page': page,
        'tab': tab,
        'limit': limit,
        'mdrender': mdrender,
      },
    );
  }

  // 获取文章详情
  getTopic({topicId, mdrender, accesstoken}) {
    return dio.get(
      '/topic/$topicId',
      data: {
        'mdrender': mdrender,
        'accesstoken': accesstoken,
      },
    );
  }

  // 创建文章
  createTopic({accesstoken, title, tab, content}) {
    return dio.post(
      '/topics',
      data: {
        'accesstoken': accesstoken,
        'title': title,
        'tab': tab,
        'content': content
      },
    );
  }

  // 获取用户详情
  getUser(loginName) {
    return dio.get('/user/$loginName');
  }

  // 验证Token正确性
  accessToken(accessToken) {
    return dio.post('/accesstoken', data: {'accessToken': accessToken});
  }
}
