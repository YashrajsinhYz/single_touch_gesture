import 'package:flutter/material.dart';
import 'package:single_touch_gesture/single_touch_gesture.dart';

class CheckBoxTileExample extends StatefulWidget {
  const CheckBoxTileExample({super.key});

  @override
  State<CheckBoxTileExample> createState() => _CheckBoxTileExampleState();
}

class _CheckBoxTileExampleState extends State<CheckBoxTileExample> {
  List data = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkbox Tile Demo"),
      ),
      body: Center(
        /*
        * This SingleTouchGestureWidget is used to enforce a single-pointer gesture restriction.
        * Just remove it to see the effect without the restriction.
        * */
        child: SingleTouchGestureWidget(
          child: ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                  value: data[index],
                  title: Text("Card : $index"),
                  onChanged: (value) {
                    data[index] = value;
                    setState(() {});
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
