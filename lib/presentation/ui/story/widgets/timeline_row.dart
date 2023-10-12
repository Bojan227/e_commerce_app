import 'package:ecommerce_app/presentation/blocs/story_counter/story_counter_cubit.dart';
import 'package:ecommerce_app/presentation/ui/story/widgets/timeline_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final stories = [0, 1, 2];

class TimelineRow extends StatefulWidget {
  const TimelineRow({super.key});

  @override
  State<TimelineRow> createState() => _TimelineRowState();
}

class _TimelineRowState extends State<TimelineRow>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });

    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void restartController() {
    controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoryCounterCubit, StoryCounterState>(
      listener: (context, state) {
        if (!state.timer!.isActive) {
          if (stories.length == state.currentIndex + 1) {
            context.read<StoryCounterCubit>().cancelTimer();
          } else {
            context.read<StoryCounterCubit>().initTimer(5);
          }
          restartController();
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int index = 0; index < stories.length; index += 1)
              GestureDetector(
                child: TimelineWidget(
                  controller: controller,
                  isStoryActive: index == state.currentIndex,
                  isStoryShown: index < state.currentIndex,
                ),
              ),
          ],
        );
      },
    );
  }
}
