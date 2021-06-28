import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// use the expanded widget to expand the widget across the main axis.
// the widget will stretch but other widgets can still be seen
// see the documentation

// => use this when there is only 1 line of instruction within the function. so return is not needed. for example
// int add(){
// return 5+2;
// }
// this becomes int add() => 5+2;

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colName, int sound}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colName),
        onPressed: () {
          print('clicked$sound');
          playSound(sound);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colName: Colors.red, sound: 1),
              buildKey(colName: Colors.orange, sound: 2),
              buildKey(colName: Colors.yellow, sound: 3),
              buildKey(colName: Colors.green, sound: 4),
              buildKey(colName: Colors.teal, sound: 5),
              buildKey(colName: Colors.blue, sound: 6),
              buildKey(colName: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
