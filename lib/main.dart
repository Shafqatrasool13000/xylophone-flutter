import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() => runApp(XylophoneApp());
final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
void musicNumber(int musicNo) {
  assetsAudioPlayer.open(Audio('assets/note$musicNo.wav'));
}

Expanded flatButtons(int number, Color color) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        musicNumber(number);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              flatButtons(1, Colors.red),
              flatButtons(2, Colors.orange),
              flatButtons(3, Colors.yellow),
              flatButtons(4, Colors.green),
              flatButtons(5, Colors.grey),
              flatButtons(6, Colors.blue),
              flatButtons(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonsInXylophone extends StatelessWidget {
  final Color color;
  final int id;
  ButtonsInXylophone({
    this.id,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          assetsAudioPlayer.open(Audio('assets/note$id.wav'));
        },
      ),
    );
  }
}
