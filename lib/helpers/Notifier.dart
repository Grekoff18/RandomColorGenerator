// Libs and packages imports
import 'package:flutter/material.dart';

class Notifier {
  static snackBar(String message, dynamic target) {
    target.showSnackBar(
        new SnackBar(
            content: new Text(message)
        )
    );
  }
}