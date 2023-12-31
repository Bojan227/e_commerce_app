import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_time_chip.dart';
import 'package:ecommerce_app/presentation/ui/widgets/row_with_spacing.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key, required this.deliveryTimeChips});

  final List<DeliveryTimeChip> deliveryTimeChips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: RowWithSpacing(spacing: 12, children: deliveryTimeChips),
      ),
    );
  }
}
