import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
} 

class XylophoneApp extends StatelessWidget {
  void playMusic(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded triggered({Color color, int soundNumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playMusic(soundNumber);
        }, child: null,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              triggered(color: Colors.purple, soundNumber: 1),

              triggered(color: Colors.blue,   soundNumber: 2),

              triggered(color: Colors.lightBlueAccent, soundNumber: 3),

              triggered(color: Colors.green,  soundNumber: 4),

              triggered(color: Colors.yellow, soundNumber: 5),

              triggered(color: Colors.orange, soundNumber: 6),

              triggered(color: Colors.red,    soundNumber: 7),

            ],

          ),
        ),
      ),
    );
  }
}
