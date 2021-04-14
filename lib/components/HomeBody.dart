// Libs and packages imports
import 'package:flutter/material.dart';
// Project imports
import '../helpers/UniqueColorGenerator.dart';
import '../config/constants/General.dart';
import '../config/widgets/Clock.dart';
import '../helpers/Notifier.dart';

class HomeBody extends StatefulWidget{
  HomeBody({ Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>{
  // Set startup background color
  Color _backgroundColor = UniqueColorGenerator.getColor();

  // @click on screen => change bgColor MainHomePage && send notify
  void _changeBackground() => setState(() => {
    _backgroundColor = UniqueColorGenerator.getColor(),
    Notifier.snackBar("Background color changed", ScaffoldMessenger.of(context))
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector (
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: const Text(
                    "Hey There",
                    style: TextStyle(
                      fontWeight: textWeigth,
                      fontFamily: "PressStart2P",
                      fontSize: 25,
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  )
                )
              )
            )
          ]
        ),
      )
    );
  }
}