import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    this.onSearch,
  });

  final void Function(String searchQuery)? onSearch;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding2),
      child: Container(
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        decoration: BoxDecoration(color: colorPalette.grey100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: colorPalette.grey500,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                style: textTheme.bodyMedium1.copyWith(
                  color: colorPalette.grey500,
                ),
                cursorColor: colorPalette.grey500,
                decoration: InputDecoration(
                  focusColor: colorPalette.grey100,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: textTheme.bodyMedium1.copyWith(
                    color: colorPalette.grey500,
                  ),
                ),
                onChanged: (value) {
                  if (onSearch != null) {
                    onSearch!(value);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
