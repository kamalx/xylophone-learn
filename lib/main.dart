import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final int numNotes = 8;
  final List<Color> myColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.deepPurple
  ];

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey(int note) {
    return Expanded(
      child: FlatButton(
        color: myColors[note - 1],
        onPressed: () {
          playSound(note);
        },
        child: SizedBox(),
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
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}
