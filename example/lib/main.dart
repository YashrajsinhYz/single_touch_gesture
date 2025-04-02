import 'package:example/checkbox_tile_example.dart';
import 'package:example/dismissible_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SingleTouchExample());
}

class SingleTouchExample extends StatelessWidget {
  const SingleTouchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Single Touch Gesture Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: "Single Touch Gesture Demo"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.inversePrimary)),
              child: Text(
                "Dismissible Example",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DismissibleExample(),
                ));
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.inversePrimary)),
              child: Text(
                "Checkbox Tile Example",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CheckBoxTileExample(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
