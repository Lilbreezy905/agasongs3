import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerWidget extends StatelessWidget {
  const YoutubePlayerWidget(
      {super.key, required this.videoId, this.bottomWidget});
  final String videoId;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            onEnded: (YoutubeMetaData metaData) {
              metaData.videoId;

              _controller.play();
            },
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
          builder: (context, player) {
            return Column(
              children: [
                player,
              ],
            );
          },
        ),
      ),
    );
  }
}
