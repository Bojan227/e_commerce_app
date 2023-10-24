import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final titleLarge = textTheme.titleLarge.copyWith(color: colorPalette.black);
    final bodyMedium =
        textTheme.bodyMedium1.copyWith(color: colorPalette.black);
    final bodyMedium2 =
        textTheme.bodyMedium2.copyWith(color: colorPalette.grey500);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: Text(
            'delivery address',
            style: titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              'lib/core/assets/pin.png',
              width: 24,
              height: 24,
            ),
            title: Text(
              'London, 221B Baker Street',
              style: bodyMedium,
            ),
            subtitle: Text('Hanna Gouse, +7 932 123-43-23', style: bodyMedium2),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: colorPalette.black,
            ),
          ),
        )
      ],
    );
  }
}
