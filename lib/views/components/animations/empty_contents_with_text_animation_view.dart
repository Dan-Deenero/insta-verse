import 'package:flutter/material.dart';
import 'package:instaverse/views/components/animations/empty_contents_animation_view.dart';

class EMptyContentsWithTextAnimationView extends StatelessWidget {
  final String text;
  const EMptyContentsWithTextAnimationView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white54,
                ),
          ),
        ),
        const EmptyContentAnimationView(),
      ],),
    );
  }
}
