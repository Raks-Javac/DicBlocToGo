import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String audioUrl;

  const AudioPlayerWidget({Key key, @required this.audioUrl}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  AudioPlayer audioPlayer;
  AudioPlayerState audioPlayerState;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerStateChanged.listen((AudioPlayerState state) {
      setState(() {
        audioPlayerState = state;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> playAudio() async {
    int result = await audioPlayer.play(widget.audioUrl);
    if (result == 1) {
      setState(() {
        isPlaying = true;
      });
    }
  }

  Future<void> pauseAudio() async {
    int result = await audioPlayer.pause();
    if (result == 1) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
          onPressed: () {
            if (isPlaying) {
              pauseAudio();
            } else {
              playAudio();
            }
          },
        ),
        Text(
          audioPlayerState.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
