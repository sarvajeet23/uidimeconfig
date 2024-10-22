import 'package:flutter/material.dart';
import '../uidimeconfig.dart';

class TextStyles {
  static TextStyle get heading1 => TextStyle(
        fontSize: Dime.fmedium,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get caption => TextStyle(
        fontSize: Dime.fsmall,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      );

  static TextStyle get smallText => TextStyle(
        fontSize: Dime.fsmall,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );

  static TextStyle get mediumText => TextStyle(
        fontSize: Dime.fmedium,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get largeText => TextStyle(
        fontSize: Dime.flarge,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );
}
