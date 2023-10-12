import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/story_item.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> stories = [
  {"image": "lib/core/assets/story.png", 'text': "best of 2020"},
  {"image": "lib/core/assets/story_1.png", 'text': "the golden hour"},
  {"image": "lib/core/assets/story_2.png", 'text': "lovely kitchen"},
  {"image": "lib/core/assets/story_3.png", 'text': "summer choice"},
];

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Row(
            children: [
              for (Map<String, dynamic> story in stories)
                GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(
                        const PageRouteInfo('StoryScreen'),
                      );
                    },
                    child:
                        StoryItem(image: story['image'], text: story['text']))
            ],
          ),
        ));
  }
}
