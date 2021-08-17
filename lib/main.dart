import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color, Text text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: text,
        textColor: Colors.white70,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                soundNumber: 1,
                color: Colors.red,
                text: Text(
                  'DO',
                  style: TextStyle(
                      fontSize: 40,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              buildKey(
                  soundNumber: 2,
                  color: Colors.orange,
                  text: Text(
                    'SI',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              buildKey(
                  soundNumber: 3,
                  color: Colors.yellow,
                  text: Text(
                    'LA',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              buildKey(
                  soundNumber: 4,
                  color: Colors.green,
                  text: Text(
                    'SOL',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              buildKey(
                  soundNumber: 5,
                  color: Colors.teal,
                  text: Text(
                    'FA',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              buildKey(
                  soundNumber: 6,
                  color: Colors.blue,
                  text: Text(
                    'MI',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
              buildKey(
                  soundNumber: 7,
                  color: Colors.purple,
                  text: Text(
                    'RE',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
