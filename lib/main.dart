import 'package:flutter/material.dart';
import 'sceneBrain.dart';

Scene scene = Scene();

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
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
  void verification(int monChoix) {
    setState(() {
      scene.QuestionSuivante(monChoix);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              scene.getLaQuestion(),
              style: TextStyle(
                  color: Colors.white70, fontFamily: 'Lobster', fontSize: 25),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: Text(
              scene.getLeChoix1(),
              style: TextStyle(fontSize: 20, fontFamily: 'ShadowsIntoLight'),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background (button) color
              onPrimary: Colors.deepPurple[900],
            ),
            onPressed: () {
              verification(1);
            },
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: Text(
              scene.getLeChoix2(),
              style: TextStyle(fontSize: 20, fontFamily: 'ShadowsIntoLight'),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background (button) color
              onPrimary: Colors.deepPurple[900],
            ),
            onPressed: () {
              verification(2);
            },
          ),
        ),
      ),
    ]);
  }
}
