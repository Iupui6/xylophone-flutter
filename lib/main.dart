import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // Plays the specific sound based on the index passed in
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // Builds out each of the 7 keys
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        )
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
            children: <Widget>[
              buildKey(color: Colors.redAccent, soundNumber: 1),
              buildKey(color: Colors.orangeAccent, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.blueAccent, soundNumber: 5),
              buildKey(color: Colors.deepPurpleAccent, soundNumber: 6),
              buildKey(color: Colors.purple[800], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}