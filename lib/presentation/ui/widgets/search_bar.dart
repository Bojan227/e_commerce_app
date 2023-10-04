import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: colorPalette.grey100),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: colorPalette.grey500,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child:
                  //     TextFormField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //         borderSide:
                  //             BorderSide(color: colorPalette.grey100, width: 1)),
                  //     hintText: 'Search',
                  //     hintStyle:
                  //         textTheme.bodyMedium1.copyWith(color: colorPalette.grey500),
                  //   ),
                  // )
                  Text(
                "Search",
                style: textTheme.bodyMedium1.copyWith(
                  color: colorPalette.grey500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
