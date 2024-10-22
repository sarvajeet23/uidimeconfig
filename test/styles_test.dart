import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uidimeconfig/styles/shadows.dart';
import 'package:uidimeconfig/styles/text_styles.dart';
import 'package:uidimeconfig/uidimeconfig.dart';

void main() {
  test('TextStyles return valid TextStyle', () {
    Dime.init(360, 640);
    
    final mediumTextStyle = TextStyles.mediumText;
    expect(mediumTextStyle.fontSize, Dime.fmedium);
    expect(mediumTextStyle.fontWeight, FontWeight.bold);
    expect(mediumTextStyle.color, Colors.black);
  });

  test('Shadows return valid BoxShadow', () {
    final shadow = Shadows.smallShadow.first;
    expect(shadow.color, Colors.black.withOpacity(0.1));
    expect(shadow.blurRadius, 4.0);
  });
}
