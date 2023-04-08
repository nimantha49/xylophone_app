import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
//function1 (IT CAN CHANGE THE SOUND NUMBER)
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('asset/note$soundNumber.mp3'));
  }

  Expanded buildKey({color, soundNumber}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playSound(soundNumber);
          },
          child: const Text(
            '',
            style: TextStyle(color: Colors.black),
          )),
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
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.greenAccent, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.green, soundNumber: 6),
            buildKey(color: Colors.blue, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
