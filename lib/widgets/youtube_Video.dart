import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtubeVideo extends StatefulWidget {
  const youtubeVideo({
    Key? key,
  }) : super(key: key);

  @override
  State<youtubeVideo> createState() => _youtubeVideoState();
}

class _youtubeVideoState extends State<youtubeVideo> {
  late YoutubePlayerController _youtubeController;
  final _yturl = 'https://youtu.be/id1E0lqnUtY';
  @override
  void initState() {
    final ytVideoID = YoutubePlayer.convertUrlToId(_yturl);
    _youtubeController = YoutubePlayerController(
      initialVideoId: ytVideoID!,
      flags: YoutubePlayerFlags(
        loop: true,
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'What is Dukaan Premium ?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          YoutubePlayer(
            controller:_youtubeController,
            showVideoProgressIndicator: true,
            liveUIColor: Colors.red,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              debugPrint('Ready');
            },
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
