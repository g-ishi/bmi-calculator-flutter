import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    Widget colorSoundButton({Color buttonColor, int soundNumber}) {
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              playSound(soundNumber);
            },
            style: TextButton.styleFrom(
              backgroundColor: buttonColor,
              padding: EdgeInsets.zero,
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // Columnの横幅いっぱいに広げるのは、↓でもいいし、Sizedboxを使ってもいい。
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              colorSoundButton(buttonColor: Colors.red, soundNumber: 1),
              colorSoundButton(buttonColor: Colors.orange, soundNumber: 2),
              colorSoundButton(buttonColor: Colors.yellow, soundNumber: 3),
              colorSoundButton(buttonColor: Colors.green, soundNumber: 4),
              colorSoundButton(buttonColor: Colors.blueGrey, soundNumber: 5),
              colorSoundButton(buttonColor: Colors.blue, soundNumber: 6),
              colorSoundButton(buttonColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
