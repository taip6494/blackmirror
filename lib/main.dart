import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'La Question',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: Text(
              'Suggestion 1',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background (button) color
              onPrimary: Colors.blueAccent,
            ),
            onPressed: () {},
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: Text(
              'Suggestion 2',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background (button) color
              onPrimary: Colors.blueAccent,
            ),
            onPressed: () {},
          ),
        ),
      ),
    ]);
  }
}
