import 'package:audioplayers/audioplayers.dart';
import 'package:cambridgedictionary_try/const/app_colors.dart';
import 'package:flutter/material.dart';

class PronouncedIconButton extends StatefulWidget {
  final String urlWord;

  const PronouncedIconButton({super.key, required this.urlWord});

  @override
  State<PronouncedIconButton> createState() => _PronouncedIconButtonState();
}

class _PronouncedIconButtonState extends State<PronouncedIconButton> {
  final audioPlayer = AudioPlayer();
  final bool _isPronounced = false;

  @override
  void initState() {
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPronounced ? PlayerState.playing : PlayerState.stopped;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.setSourceUrl(widget.urlWord);
  }


  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (_isPronounced) {
          await audioPlayer.stop();
        } else {
          await audioPlayer.resume();
        }
      },
      icon: Icon(
        Icons.volume_up_outlined,
        color: _isPronounced ? AppColors.mainAmber : Colors.grey,
      ),
    );
  }
}
