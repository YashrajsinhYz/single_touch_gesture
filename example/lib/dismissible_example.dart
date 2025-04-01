import 'package:flutter/material.dart';
import 'package:single_touch_gesture/single_touch_gesture.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Dismissible Demo"),
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
              return Dismissible(
                key: Key("$index"),
                background: slideRightBackground(),
                secondaryBackground: slideLeftBackground(),
                child: SizedBox(
                  height: 50,
                  child: Card(
                    color: Theme.of(context).colorScheme.primaryFixedDim,
                    child: Center(child: Text("Card : $index")),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget slideRightBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              " Edit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
