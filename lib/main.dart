import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Drumpage(), backgroundColor: Colors.black12),
    );
  }
}

class Drumpage extends StatelessWidget {
  final player = AudioPlayer();

  void soundPlay(String sound) {
    player.play(AssetSource('$sound.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('bip', Colors.blueAccent),
                ),
                Expanded(
                  child: buildDrumPad('bongo', Colors.redAccent),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: buildDrumPad('clap1', Colors.purpleAccent),
              ),
              Expanded(
                child: buildDrumPad('clap2', Colors.blueGrey),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: buildDrumPad('clap3', Colors.green),
              ),
              Expanded(
                child: buildDrumPad('crash', Colors.lightBlueAccent),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: buildDrumPad('ridebel', Colors.yellowAccent),
              ),
              Expanded(
                child: buildDrumPad('woo', Colors.brown),
              )
            ],
          )),
        ],
      ),
    );
  }

  TextButton buildDrumPad(String sound, Color myColor) {
    return TextButton(
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(8)),
        onPressed: () {
          soundPlay(sound);
        },
        child: Container(
          color: myColor,
        ));
  }
}
