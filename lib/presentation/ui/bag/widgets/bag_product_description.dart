import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/flash_bar_notification.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

class BagProductDesription extends StatelessWidget {
  const BagProductDesription(
      {super.key,
      required this.price,
      required this.description,
      required this.notificationDuration});

  final String price;
  final String description;
  final int notificationDuration;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                price,
                style: textTheme.bodyLarge1.copyWith(
                  color: colorPalette.black,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                context.showFlash<bool>(
                  barrierDismissible: true,
                  duration: Duration(seconds: notificationDuration),
                  builder: (context, controller) => FlashBarNotificiation(
                      controller: controller,
                      notificationDuration: notificationDuration),
                );
              },
              icon: Semantics(
                label: 'Delete bag item',
                child: Icon(
                  Icons.cancel_outlined,
                  color: colorPalette.grey500,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: 200,
          child: Text(
            description,
            style: textTheme.bodyMedium3.copyWith(color: colorPalette.grey500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
