// Libs and packages imports
import 'package:flutter/material.dart';
// Project imports
import '../config/constants/HomePage.dart';
import 'HomeBody.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 50.0,
        backgroundColor: appBarBackground,
        brightness: Brightness.dark,
      ),
      body: HomeBody(),
    );
  }
}