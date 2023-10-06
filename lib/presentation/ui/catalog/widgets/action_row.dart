import 'package:ecommerce_app/presentation/ui/catalog/widgets/action_widget.dart';
import 'package:flutter/material.dart';

class ActionRow extends StatelessWidget {
  const ActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionWidget(
            title: 'Sort',
            onPressed: () {},
            shape: 'lib/core/assets/sort_shape.png',
          ),
          ActionWidget(
            title: 'Filter',
            onPressed: () {},
            shape: 'lib/core/assets/filter_shape.png',
          )
        ],
      ),
    );
  }
}
