import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/action_widget.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/sort_bottom_sheet.dart';
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
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: false,
                context: context,
                builder: (context) {
                  return const FractionallySizedBox(
                    heightFactor: 0.6,
                    child: SortBottomSheet(),
                  );
                },
              );
            },
            shape: 'lib/core/assets/sort_shape.png',
          ),
          ActionWidget(
            title: 'Filter',
            onPressed: () {
              AutoRouter.of(context).push(
                const PageRouteInfo(
                  'FilterNavWrapper',
                ),
              );
            },
            shape: 'lib/core/assets/filter_shape.png',
          )
        ],
      ),
    );
  }
}
