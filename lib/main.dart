import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  Expanded func(
    Color color,
    int sound,
  ) {
    final player = AudioCache();
    return Expanded(
      child: TextButton(
          onPressed: () {
            player.play('note$sound.wav');
          },
          child: Container(
            color: color,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              func(Colors.red, 1),
              func(Colors.blue, 2),
              func(Colors.green, 3),
              func(Colors.teal, 4),
              func(Colors.yellow, 5),
              func(Colors.orange, 6),
              func(Colors.indigo, 7),
            ],
          ),
        ),
      ),
    );
  }
}
