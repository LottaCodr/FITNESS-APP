import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;

  const VideoPlayerScreen({
    Key? key,
    required this.url,
    required this.dataSourceType,
  }) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController myVideoController;
  late ChewieController chewieController;
  late Future<void> initializeVideoPlayer;

  @override
  void initState() {
    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        myVideoController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        myVideoController = VideoPlayerController.network(widget.url);
        break;
      case DataSourceType.file:
      case DataSourceType.contentUri:
        myVideoController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
    }

    chewieController = ChewieController(
        videoPlayerController: myVideoController, aspectRatio: 16 / 8);
    // myVideoController = VideoPlayerController.network(
    //     'https://www.youtube.com/watch?v=ZSzz6JChQhE');
    // initializeVideoPlayer = myVideoController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    //to ensure the dispose of the controller
    myVideoController.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // to display a spinner while waiting for video initializing
      future: initializeVideoPlayer,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: myVideoController.value.aspectRatio,
            child: VideoPlayer(myVideoController),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
