import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

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
  Expanded buildkey({Color color = Colors.white, int soundnumber = 0})
  {
  return Expanded(
    child: MaterialButton(

      color: color,
      onPressed: () {
        playsound(soundnumber);
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
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color:Colors.red,soundnumber:1),
                buildkey(color:Colors.orange,soundnumber:2),
                buildkey(color:Colors.yellow,soundnumber:3),
                buildkey(color:Colors.green,soundnumber:4),
                buildkey(color:Colors.teal,soundnumber:5),
                buildkey(color:Colors.blue,soundnumber:6),
                buildkey(color:Colors.purple,soundnumber:7),


        ],
            ),


        ),
      ),
    );
  }
}
