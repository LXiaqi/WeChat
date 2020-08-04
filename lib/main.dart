import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MaterialApp(
      title: 'wechat',
      debugShowCheckedModeBanner: false,
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        // "app":(BuildContext context) =>new App();
        "/friends": (_) => WebviewScaffold(
              url: "https://weixin.qq.com",
              appBar: AppBar(
                title: Text('微信朋友圈'),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        // 'search':(BuildContext context) => Search();
      },
      home: LoadingPage(),
    ));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f),
);
