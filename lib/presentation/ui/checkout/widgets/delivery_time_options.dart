import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_time_chip.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/horizontal_list.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> days = [
  {
    'day': 'Tommorrow',
    "isSelected": true,
  },
  {
    'day': 'Jun 25',
    "isSelected": false,
  },
  {
    'day': 'Jun 26',
    "isSelected": false,
  },
  {
    'day': 'Jun 27',
    "isSelected": false,
  },
  {
    'day': 'Jun 28',
    "isSelected": false,
  },
  {
    'day': 'Jun 29',
    "isSelected": false,
  },
  {
    'day': 'Jun 30',
    "isSelected": false,
  },
];

final List<Map<String, dynamic>> time = [
  {
    'period': '12:00 pm',
    "isSelected": true,
  },
  {
    'period': '02:00 pm',
    "isSelected": false,
  },
  {
    'period': '04:00 pm',
    "isSelected": false,
  },
  {
    'period': '06:00 pm',
    "isSelected": false,
  },
  {
    'period': '08:00 pm',
    "isSelected": false,
  },
];

class DeliveryTimeOptions extends StatelessWidget {
  const DeliveryTimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final dayChips = days
        .map(
          (d) => DeliveryTimeChip(
            label: d['day'],
            isSelected: d['isSelected'],
          ),
        )
        .toList();

    final timeChips = time
        .map(
          (d) => DeliveryTimeChip(
            label: d['period'],
            isSelected: d['isSelected'],
          ),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: Text(
            'delivery time',
            style: textTheme.titleLarge.copyWith(color: colorPalette.black),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        HorizontalList(deliveryTimeChips: dayChips),
        HorizontalList(deliveryTimeChips: timeChips),
      ],
    );
  }
}
