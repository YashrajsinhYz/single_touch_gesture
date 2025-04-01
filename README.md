# **Single Touch Gesture** 📱✨
*A Flutter package that prevents multiple touch gestures, allowing only one pointer at a time.*

[![pub package](https://img.shields.io/pub/v/single_touch_gesture.svg)](https://pub.dev/packages/single_touch_gesture)  
[![GitHub stars](https://img.shields.io/github/stars/YashrajsinhYz/single_touch_gesture?style=social)](https://github.com/YashrajsinhYz/single_touch_gesture)

## 📌 **Overview**
**`single_touch_gesture`** is a Flutter package that ensures **only one pointer (touch event) is recognized at a time**. This helps prevent unwanted multi-touch interactions in widgets like **Dismissible, Checkbox, Sliders, and Buttons**.

## 🎯 **Features**
✅ Prevents multiple gestures from being recognized at once.  
✅ Useful for gesture-sensitive widgets like swipe actions.  
✅ Works seamlessly with Flutter's **GestureDetector** and **RawGestureDetector**.  
✅ Lightweight and easy to integrate.

---

## 🚀 **Installation**
Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  single_touch_gesture: ^0.0.1
```
Then, run:

```sh
flutter pub get
```

---

## 📖 **Usage**

### **Basic Example**
Wrap any widget inside **`SingleTouchGestureWidget`** to enable single-touch behavior:

```dart
import 'package:flutter/material.dart';
import 'package:single_touch_gesture/single_touch_gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Single Touch Gesture Example')),
        body: Center(
          child: SingleTouchGestureWidget(
            child: Dismissible(
              key: const Key('dismiss'),
              onDismissed: (_) {},
              background: Container(color: Colors.red),
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue,
                child: const Text(
                  'Swipe me, but only one touch at a time!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

---

## ⚙ **API Reference**

### **SingleTouchGestureWidget**
Wraps child widgets to prevent multiple touches.

```dart
const SingleTouchGestureWidget({required Widget child});
```

### **SingleTouchRecognizer**
Custom gesture recognizer that allows only one pointer at a time.

```dart
class SingleTouchRecognizer extends OneSequenceGestureRecognizer {
  // Internal logic for handling single-touch gestures.
}
```

---

## 🛠 **Development & Contribution**
Feel free to contribute! To set up the project locally:

```sh
git clone https://github.com/YashrajsinhYz/single_touch_gesture.git
cd single_touch_gesture
flutter pub get
```

### **Run Tests**
```sh
flutter test
```

### **Submit a Pull Request**
1. Fork the repository.
2. Create a new branch (`feature-name`).
3. Make changes and commit.
4. Push to your branch and open a PR.

---

## 📬 **Support & Issues**
- For bug reports and feature requests, please [open an issue](https://github.com/YashrajsinhYz/single_touch_gesture/issues).
- If you like this package, give it a ⭐ on [GitHub](https://github.com/YashrajsinhYz/single_touch_gesture)!

---

## 📜 **License**
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
