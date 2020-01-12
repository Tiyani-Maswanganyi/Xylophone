import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Widget buildKey(int soundNo, Color keyColor) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () => playSound(soundNo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1, Colors.red),
            buildKey(2, Colors.blue),
            buildKey(3, Colors.green),
            buildKey(4, Colors.pink),
            buildKey(5, Colors.orange),
            buildKey(5, Colors.purple),
            buildKey(6, Colors.yellow),
          ],
        ),
      ),
    );
  }
}
