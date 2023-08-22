import 'package:flutter/material.dart';

class Status {
  static Widget getCheckIcon() {
    return Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  static Widget getCloseIcon() {
    return Icon(
      Icons.close,
      color: Colors.red,
    );
  }
}
