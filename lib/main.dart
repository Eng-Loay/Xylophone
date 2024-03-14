import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
void  playsound(int soundNumber)
{
  final player = AudioPlayer();
  player.play(AssetSource('audio/note$soundNumber.wav'));
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child:Column(
              children: [
                MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    playsound(1);
                  },
                ),
                MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    playsound(2);
                  },
                ),
                MaterialButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playsound(3);
                  },
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    playsound(4);
                  },
                ),
                MaterialButton(
                  color: Colors.teal,
                  onPressed: () {
                    playsound(5);
                  },
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    playsound(6);
                  },
                ),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: () {
                    playsound(7);
                  },
                ),
              ],
            ),


        ),
      ),
    );
  }
}
