import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  List<Widget> keyWidgets = [];
  Map notes = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.teal,
    6: Colors.blue,
    7: Colors.purple
  };

  Widget buildKey(Color value, int key) {
    return Expanded(
      child: FlatButton(
        color: value,
        onPressed: () {
          playSound(key);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: notes.entries.map( (e) => buildKey(e.value, e.key)).toList()
            ),
          ),
        ),
      ),
    );
  }
}
