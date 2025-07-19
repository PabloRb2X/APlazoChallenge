import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MealDetailVideo extends StatefulWidget {
  const MealDetailVideo({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  State<MealDetailVideo> createState() => _MealDetailVideo();
}

class _MealDetailVideo extends State<MealDetailVideo> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    final videoId =
        YoutubePlayer.convertUrlToId(widget.mealDetailData.strYoutube ?? '');

    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final soundestController = _controller;

    if (soundestController != null &&
        (widget.mealDetailData.strYoutube?.isNotEmpty ?? false)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: DesignSystemDimension.spacing_4,
        children: [
          Text(
            'Explanation video: ',
            style: DesignSystemTextStyle.body1,
          ),
          YoutubePlayer(
            controller: soundestController,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
          ),
        ],
      );
    }

    return SizedBox.shrink();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  String getYoutubeVideoId(String url) {
    return YoutubePlayer.convertUrlToId(url) ?? '';
  }
}
