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

## 🎥 Demo

### 📌 Dismissible Example
🔹 **Left :** ❌ Without `single_touch_gesture` → Multiple touches cause unexpected behavior.  

🔹 **Right :** ✅ With `single_touch_gesture` → Only one touch is registered at a time.

<p align="center">
  <table>
    <tr>
      <td align="center"><b>❌ Without `single_touch_gesture`</b></td>
      <td align="center"><b>✅ With `single_touch_gesture`</b></td>
    </tr>
    <tr>
      <td align="center">
        <img src="https://raw.githubusercontent.com/YashrajsinhYz/single_touch_gesture/main/assets/examples/without_single_touch_gesture_package.gif" width="200">
      </td>
      <td align="center">
        <img src="https://raw.githubusercontent.com/YashrajsinhYz/single_touch_gesture/main/assets/examples/with_single_touch_gesture_package.gif" width="200">
      </td>
    </tr>
  </table>
</p>

---

## 🚀 **Installation**
Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  single_touch_gesture: ^1.0.0
```
Then, run:

```sh
flutter pub get
```

---

## 📖 **Usage**

To see how to use **`single_touch_gesture`**, check out the [example folder](https://github.com/YashrajsinhYz/single_touch_gesture/tree/main/example) in the repository.

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
