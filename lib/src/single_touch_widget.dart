import 'package:flutter/material.dart';

import 'single_pointer_recognizer.dart';

// A widget that uses the SinglePointerRecognizer to enforce a single-pointer gesture restriction.
class SingleTouchGestureWidget extends StatelessWidget {
  // The child widget to which the gesture recognizer will be applied.
  final Widget? child;

  const SingleTouchGestureWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    // Using RawGestureDetector to add custom gesture recognition behavior.
    return RawGestureDetector(
      // Map the SinglePointerRecognizer type to its factory implementation.
      gestures: <Type, GestureRecognizerFactory>{
        SinglePointerRecognizer:
            GestureRecognizerFactoryWithHandlers<SinglePointerRecognizer>(
          // Create a new instance of the recognizer.
          () => SinglePointerRecognizer(),
          // Configure the recognizer instance, if needed.
          (SinglePointerRecognizer instance) {
            // Currently, no configuration is provided.
          },
        ),
      },
      // The child widget that will use the gesture recognizer.
      child: child,
    );
  }
}
