library uidimeconfig;

import 'package:flutter/material.dart';

class Dime {
  static late double width;
  static late double height;
  static late double fontsize;

  static void init(double screenWidth, double screenHeight) {
    assert(screenWidth > 0 && screenHeight > 0,
        "Screen dimensions must be positive.");
    width = screenWidth;
    height = screenHeight;
    fontsize = height / 100;
  }

  // Standard Dimensions
  static double get fsmall => fontsize * 5.2;
  static double get fmedium => fontsize * 10.0;
  static double get flarge => fontsize * 12.0;

  // Print method with yellow color
  static void print(String message) {
    final formattedMessage = '\x1B[33m message: $message\x1B[0m';
    debugPrint(formattedMessage);
  }
  
  // Trace method
  static void trace(String message) {
    final stackTrace = StackTrace.current.toString().split('\n');
    if (stackTrace.length > 1) {
      final callerInfo = stackTrace[1].trim();
      final formattedMessage = '\x1B[33m Trace: $message\n$callerInfo\x1B[0m';
      debugPrint(formattedMessage);
    } else {
      debugPrint('\x1B[33m Trace: $message\x1B[0m');
    }
  }
}
