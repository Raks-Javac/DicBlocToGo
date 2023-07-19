import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String audioUrl;

  const AudioPlayerWidget({super.key, required this.audioUrl});

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  AudioPlayer? audioPlayer;

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    // audioPlayer.onPlayerStateChanged.listen((AudioPlayerState state) {
    //   setState(() {
    //     audioPlayerState = state;
    //   });
    // });
  }

  @override
  void dispose() {
    audioPlayer!.dispose();
    super.dispose();
  }

  Future<void> playAudio() async {
    await audioPlayer?.play(UrlSource(widget.audioUrl));
  }

  Future<void> pauseAudio() async {
    await audioPlayer?.pause();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: isPlaying ? const Icon(Icons.pause) : const Icon(Icons.play_arrow),
      onTap: () {
        if (isPlaying) {
          pauseAudio();
        } else {
          playAudio();
        }
      },
    );
  }
}
