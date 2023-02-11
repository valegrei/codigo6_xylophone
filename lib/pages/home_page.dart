import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  AudioPlayer mandarina = AudioPlayer();

  void playSound(int nro) {
    mandarina.play(AssetSource("audios/note$nro.wav"));
  }

  Expanded buildKey(Color color, int nro) {
    return Expanded(
        child: MaterialButton(
            color: color,
            onPressed: () {
              playSound(nro);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ElevatedButton(
          //     onPressed: (){
          //       AudioPlayer mandarina = AudioPlayer();
          //       mandarina.play(AssetSource("audios/note1.wav"));
          //     },
          //     child: const Text("Click")
          // ),
          buildKey(Colors.red, 1),
          buildKey(Colors.orange, 2),
          buildKey(Colors.yellow, 3),
          buildKey(Colors.green, 4),
          buildKey(Colors.blue, 5),
          buildKey(Colors.indigo, 6),
          buildKey(Colors.purple, 7),
          // Expanded(
          //     child: MaterialButton(
          //         color: Colors.red,
          //         onPressed: () {
          //           playSound(1);
          //         }
          //     )
          // ),
          // Expanded(
          //     child: MaterialButton(
          //         color: Colors.blue,
          //         onPressed: () {
          //           playSound(2);
          //         }
          //     )
          // ),
          // Expanded(
          //     child: MaterialButton(
          //         color: Colors.yellow,
          //         onPressed: () {
          //           playSound(3);
          //         }
          //     )
          // ),
          // Expanded(
          //   flex: 5,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     color: Colors.yellow,
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          // Image.network(
          //   "https://images.pexels.com/photos/14967402/pexels-photo-14967402.jpeg"
          // ),
        ],
      ),
    );
  }
}
