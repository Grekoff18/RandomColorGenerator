// Libs and packages imports
import 'package:flutter/material.dart';
// Project imports
import '../config/constants/HomePage.dart';
import 'HomeBody.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 50.0,
        backgroundColor: APP_BAR_BACKGROUND,
        brightness: Brightness.dark,
      ),
      body: HomeBody(),
    );
  }
}