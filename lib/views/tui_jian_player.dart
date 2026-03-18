import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:television/views/tui_jian_player_control.dart';
import 'package:video_player/video_player.dart';

import '../stores/tui_jian.dart';

class TuiJianPlayer extends StatefulWidget {
  const TuiJianPlayer({super.key, required this.item});
  final TabViewItem item;
  @override
  State<TuiJianPlayer> createState() => _TuiJianPlayerState();
}

class _TuiJianPlayerState extends State<TuiJianPlayer> {
  late VideoPlayerController _videoController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.item.url));
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      customControls: TuiJianPlayerControl(
        item: widget.item,
        onChange: _onChange,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant TuiJianPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _onChange(TabViewItem item){
    VideoPlayerController newVideoController = VideoPlayerController.networkUrl(Uri.parse(item.url));
    newVideoController.initialize().then((_){
      if (mounted) {
        setState(() {
          newVideoController.play();
          _videoController.dispose();
          _videoController = newVideoController;
          _chewieController = _chewieController.copyWith(videoPlayerController: _videoController);
        });
      }
    });
  }
  
  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chewie(controller: _chewieController),
    );
  }
}