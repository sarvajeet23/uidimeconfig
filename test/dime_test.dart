import 'package:flutter_test/flutter_test.dart';
import 'package:uidimeconfig/uidimeconfig.dart';

void main() {
  test('Dime initialization with valid dimensions', () {
    Dime.init(360, 640);
    expect(Dime.width, 360);
    expect(Dime.height, 640);
  });

  test('Dime initialization with invalid dimensions', () {
    expect(() => Dime.init(-360, 640), throwsAssertionError);
    expect(() => Dime.init(360, -640), throwsAssertionError);
  });
}
