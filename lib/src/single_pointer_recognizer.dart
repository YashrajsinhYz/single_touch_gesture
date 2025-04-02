import 'package:flutter/gestures.dart';

// A custom gesture recognizer that allows tracking only one pointer at a time.
class SinglePointerRecognizer extends OneSequenceGestureRecognizer {
  // Tracks the currently active pointer. Zero indicates no active pointer.
  int _activePointer = 0;

  @override
  void addPointer(PointerDownEvent event) {
    // Start tracking the pointer when it goes down.
    startTrackingPointer(event.pointer);

    // If no pointer is currently being tracked (_activePointer == 0), reject the gesture and track the new pointer.
    if (_activePointer == 0) {
      // Reject the gesture.
      resolve(GestureDisposition.rejected);
      // Set the new pointer as active.
      _activePointer = event.pointer;
    } else {
      // If a pointer is already being tracked, accept the gesture for this pointer.
      resolve(GestureDisposition.accepted);
    }
  }

  // A debug description of this recognizer, used for debugging purposes.
  @override
  String get debugDescription => 'SinglePointerRecognizer';

  // This method is called when the recognizer stops tracking the last pointer.
  // No specific behavior is implemented here, but it can be overridden if needed.
  @override
  void didStopTrackingLastPointer(int pointer) {}

  // Handle pointer events.
  @override
  void handleEvent(PointerEvent event) {
    // If the pointer is lifted (not down) and matches the currently active pointer, reset the active pointer.
    if (!event.down && event.pointer == _activePointer) {
      _activePointer = 0;
    }
  }
}
