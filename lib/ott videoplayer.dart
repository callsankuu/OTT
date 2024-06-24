import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class ott4 extends StatefulWidget {
  const ott4({super.key});
  @override
  State<ott4> createState() => _ott4State();
}
class _ott4State extends State<ott4> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl
          (Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
        ), );
  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      child:FlickVideoPlayer(
          flickManager: flickManager
      ),
    );
  }
}
