import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:single_touch_gesture/single_touch_gesture.dart';

void main() {
  test('SinglePointerRecognizer should accept only one pointer at a time', () {
    final recognizer = SinglePointerRecognizer();

    const pointer1 = PointerDownEvent(pointer: 1);
    const pointer2 = PointerDownEvent(pointer: 2);

    recognizer.addPointer(pointer1);
    expect(recognizer.debugDescription, 'SinglePointerRecognizer');

    recognizer.addPointer(pointer2);
    expect(recognizer.debugDescription, 'SinglePointerRecognizer');
  });
}
