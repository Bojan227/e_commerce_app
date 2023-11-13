import 'package:ecommerce_app/presentation/ui/home/widgets/category_item.dart';
import 'package:ecommerce_app/presentation/ui/widgets/column_with_spacing.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColumnWithSpacing(
        hasLeadingSpace: true,
        spacing: 16,
        children: const [
          CategoryItem(
              label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'Living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'Kitchen', image: 'lib/core/assets/category_3.png'),
          CategoryItem(
              label: 'Bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'Living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'Kitchen', image: 'lib/core/assets/category_3.png')
        ],
      ),
    );
  }
}
