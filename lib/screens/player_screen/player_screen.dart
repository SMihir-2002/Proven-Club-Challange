import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  audioPlayer() {
    var player = AssetsAudioPlayer.newPlayer().open(
      Audio("assets/relaxing/rel1.mp3"),
      autoStart: true,
      showNotification: true,
    );

    AssetsAudioPlayer().stop();
  }

  @override
  Widget build(BuildContext context) {
    // playAudio();
    // audioPlayer();

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          )),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            AssetsAudioPlayer().stop();
          },
          child: Container(
            height: 280,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network("https://picsum.photos/280")),
          ),
        ),
        
        Container(
        
        ),
      ]),
    );
  }
}
