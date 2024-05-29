import 'package:flutter/material.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/http/dtos/video_dto.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  final Video video;
  const VideoPlayerScreen({
    required this.video,
    super.key,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.video.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _youtubePlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        pageTitle: widget.video.title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: YoutubePlayer(
              controller: _youtubePlayerController,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Theme.of(context).primaryColor,
              progressColors: ProgressBarColors(
                playedColor: Theme.of(context).primaryColor,
                handleColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Button(
            hasIcon: true,
            label: "Deixe sua Dúvida",
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff242b36),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 16.0,
                      top: 8.0,
                    ),
                    child: Text(
                      "Descrição da Aula",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9EA1A5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      widget.video.description,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
