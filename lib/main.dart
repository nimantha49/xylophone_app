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
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('asset/note$soundNumber.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(
                  'NOTE 1',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(2);
                },
                child: const Text(
                  'NOTE 2',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(3);
                },
                child: const Text(
                  'NOTE 3',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(4);
                },
                child: const Text(
                  'NOTE 4',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(5);
                },
                child: const Text(
                  'NOTE 5',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(6);
                },
                child: const Text(
                  'NOTE 6',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(
                  'NOTE 7',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        )),
      ),
    );
  }
}
