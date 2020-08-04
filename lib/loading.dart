import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        print('微信程序启动.....');
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/loading.jpg'),
    );
  }
}
