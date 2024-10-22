import 'package:flutter/material.dart';

class Shadows {
  static BoxShadow boxShadow({
    Color? color,
    double? blurRadius,
    Offset? offset,
  }) {
    return BoxShadow(
      color: color ?? Colors.black.withOpacity(0.1),
      blurRadius: blurRadius ?? 4.0,
      offset: offset ?? const Offset(0, 2),
    );
  }

  static double get smallBlurRadius => 4.0;
  static double get mediumBlurRadius => 8.0;
  static double get largeBlurRadius => 12.0;

  static List<BoxShadow> get smallShadow =>
      [boxShadow(blurRadius: smallBlurRadius)];
  static List<BoxShadow> get mediumShadow =>
      [boxShadow(blurRadius: mediumBlurRadius)];
  static List<BoxShadow> get largeShadow =>
      [boxShadow(blurRadius: largeBlurRadius)];
}
