import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/router/router_config.gr.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/filter_option.dart';
import 'package:flutter/material.dart';

class FilterOptionsList extends StatelessWidget {
  const FilterOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(
              PageRouteInfo(
                'FilterOptionsScreen',
                args: FilterOptionsScreenArgs(filterOption: 'category'),
              ),
            );
          },
          child: FilterOption(title: 'Category', option: 'furniture'),
        ),
        FilterOption(title: 'Product type', option: 'All'),
        FilterOption(title: 'Color', option: 'All'),
        FilterOption(title: 'Size', option: 'All'),
        FilterOption(title: 'Quality', option: 'All'),
      ],
    );
  }
}
