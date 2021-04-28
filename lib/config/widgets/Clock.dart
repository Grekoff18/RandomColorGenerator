// Libs and packages imports
import 'package:color_generator/config/constants/General.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget Clock(BuildContext context) {
  return StreamBuilder(
    stream: Stream.periodic(
      const Duration(seconds: 1)
    ),
    builder: (context, snapshot) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: new EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              DateFormat(kDateFormat).format(DateTime.now()),
              textAlign: TextAlign.center,
              style: kBoldText,
            ),
            Text(
              DateFormat(kTimeFormat).format(DateTime.now()),
              textAlign: TextAlign.center,
              style: kBoldText,
            ),
          ],
        ),
      );
    },
  );
}