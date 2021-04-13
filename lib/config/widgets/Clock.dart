// Libs and packages imports
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Project imports
import '../constants/General.dart';

Widget Clock(
    BuildContext context,
    ) {
  return StreamBuilder(
    stream: Stream.periodic(const Duration(seconds: 1)),
    builder: (context, snapshot) {
      return Container(
          width: MediaQuery.of(context).size.width,
          padding: new EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              DateFormat('MM/dd/yyyy hh:mm:ss').format(DateTime.now()),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: COMMON_TEXT_WEIGHT,
                  fontSize: 30,
                  color: COMMON_TEXT_COLOR
              ),
            ),
          )
      );
    },
  );
}