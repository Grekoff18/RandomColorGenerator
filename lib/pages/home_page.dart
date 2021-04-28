// Libs and packages imports
import 'package:color_generator/config/constants/General.dart';
import 'package:color_generator/generated/l10n.dart';
import 'package:flutter/material.dart';
// Project imports
import 'package:color_generator/helpers/unique_color_generator.dart';
import 'package:color_generator/config/widgets/Clock.dart';
import 'package:color_generator/helpers/notifier.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Set startup background color
  Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = UniqueColorGenerator.getColor();
  }

  // @click on screen => change bgColor MainHomePage && send notify
  void _changeBackground() => setState(() => {
    _backgroundColor = UniqueColorGenerator.getColor(),
    Notifier.snackBar(S.of(context).color_changed, ScaffoldMessenger.of(context))
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).app_bar_title),
      ),
      body: GestureDetector(
        onTap: _changeBackground,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color:  _backgroundColor,
          child: Column(
            children: [
              Clock(context),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      S.of(context).hey_there,
                      style: kBoldText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}