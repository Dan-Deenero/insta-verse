import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/image_upload/models/thumbnail_request.dart';
import 'package:instaverse/state/image_upload/provider/thumbnail_provider.dart';
import 'package:instaverse/views/components/animations/loading_animation_view.dart';
import 'package:instaverse/views/components/animations/small_error_animation_view.dart';

class FIleTHumbnailView extends ConsumerWidget {
  final ThumbnailRequest thumbnailRequest;
  const FIleTHumbnailView({
    super.key,
    required this.thumbnailRequest,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumbnail = ref.watch(thumbnailProvider(
      thumbnailRequest,
    ));
    return thumbnail.when(
      data: (imageWithAspectRatio) {
        return AspectRatio(
          aspectRatio: imageWithAspectRatio.aspectRatio,
          child: imageWithAspectRatio.image,
        );
      },
      error: (error, stackTrace) {
        return const SmallErrorAnimationView();
      },
      loading: () {
        return const LoadingAnimationView();
      },
    );
  }
}
