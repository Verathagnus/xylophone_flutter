import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int audioNumber){
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }
  Widget buildKey({Color colorName, int audioNumber}){
    return Expanded(
      child: FlatButton(color: colorName,
        onPressed: (){
          playSound(4);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorName: Colors.red, audioNumber: 1),
              buildKey(colorName: Colors.yellow, audioNumber: 2),
              buildKey(colorName: Colors.green, audioNumber: 3),
              buildKey(colorName: Colors.teal, audioNumber: 4),
              buildKey(colorName: Colors.blue, audioNumber: 5),
              buildKey(colorName: Colors.indigo, audioNumber: 6),
              buildKey(colorName: Colors.purple, audioNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
