import 'package:ecommerce_app/presentation/blocs/story_counter/story_counter_cubit.dart';
import 'package:ecommerce_app/presentation/ui/story/widgets/timeline_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final stories = [0, 1, 2];

class TimelineRow extends StatelessWidget {
  final AnimationController controller;

  const TimelineRow({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoryCounterCubit, StoryCounterState>(
      listener: (context, state) {
        if (stories.length <= state.currentIndex + 1) {
          context.read<StoryCounterCubit>().cancelTimer();
          controller.forward(from: 0);
        } else {
          if (!state.timer!.isActive) {
            context.read<StoryCounterCubit>().initTimer(5);

            controller.forward(from: 0);
          }
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int index = 0; index < stories.length; index += 1)
              TimelineWidget(
                controller: controller,
                isStoryActive: index == state.currentIndex,
                isStoryShown: index < state.currentIndex,
              ),
          ],
        );
      },
    );
  }
}
