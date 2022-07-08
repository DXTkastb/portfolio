import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../buttons/bar_buttons.dart';
import '../data/projectdata.dart';
import '../projects/projectcard.dart';

class ProjectPage extends StatelessWidget {
  late final Project project;

  ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object? obj = (ModalRoute.of(context)!.settings.arguments);
    if (obj == null) {
   return const Center(child:Text(':|',style: TextStyle(decoration: TextDecoration.none),));
    } else {
      project = obj as Project;
    }

    return Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(200, 231, 255, 1.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 580),
                  child: VideoPlayer(project.demo_url)),
              Container(
                height: 580,
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeroTransitionWidget(project, false),
                    const BarButtons(
                      'GO BACK',
                      Colors.white,
                      null,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class VideoPlayer extends StatefulWidget {
  final String youtubeURL;
  const VideoPlayer(this.youtubeURL,{Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return VideoPlayerState();
  }
}

class VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    youtubePlayerController =
        YoutubePlayerController(initialVideoId: widget.youtubeURL);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(offset: Offset(0, 0), spreadRadius: 0.2, blurRadius: 10)
      ]),
      child: YoutubePlayerIFrame(
        controller: youtubePlayerController,
      ),
    );
  }
}
