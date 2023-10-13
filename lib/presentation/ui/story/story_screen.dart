import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/blocs/story_counter/story_counter_cubit.dart';
import 'package:ecommerce_app/presentation/ui/story/widgets/story_content.dart';
import 'package:ecommerce_app/presentation/ui/widgets/circle_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final storyImages = [
  'lib/core/assets/story_img.png',
  'lib/core/assets/story_1.png',
  'lib/core/assets/story_2.png'
];

@RoutePage()
class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen>
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

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return BlocProvider(
      create: (context) => StoryCounterCubit()..initTimer(5),
      child: Builder(builder: (context) {
        final int currentIndex =
            context.watch<StoryCounterCubit>().state.currentIndex;

        return Material(
          child: GestureDetector(
            onTapDown: (details) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tapX = details.globalPosition.dx;
              double edgeThreshold = screenWidth / 2;
              context.read<StoryCounterCubit>().cancelTimer();

              context.read<StoryCounterCubit>().initTimer(5);
              context.read<StoryCounterCubit>().updateIndex(currentIndex);

              if (tapX < edgeThreshold) {
                context.read<StoryCounterCubit>().decrementIndex();
              } else if (tapX > (screenWidth - edgeThreshold)) {
                if (currentIndex + 1 == storyImages.length) return;
                context.read<StoryCounterCubit>().incrementIndex();
              }
              controller.forward(from: 0);
            },
            child: Stack(
              children: [
                Image.asset(
                  storyImages[currentIndex],
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 30,
                  right: 16,
                  child: CircleBox(
                    icon: const Icon(Icons.close),
                    onTap: () {
                      AutoRouter.of(context).pop();
                      context.read<StoryCounterCubit>().cancelTimer();
                    },
                    boxColor: colorPalette.white.withOpacity(0.7),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 16,
                  child: StoryContent(
                    controller: controller,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
