// Libs and packages imports
import 'package:flutter/material.dart';
// Project imports
import './components/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(title: 'Flutter Random Color Generator'),
    );
  }
}



