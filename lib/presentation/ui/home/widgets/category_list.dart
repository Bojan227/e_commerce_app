import 'package:ecommerce_app/presentation/ui/home/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryItem(
              label: 'bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'kitchen', image: 'lib/core/assets/category_3.png'),
          CategoryItem(
              label: 'bedroom', image: 'lib/core/assets/category_1.png'),
          CategoryItem(
              label: 'living room', image: 'lib/core/assets/category_2.png'),
          CategoryItem(
              label: 'kitchen', image: 'lib/core/assets/category_3.png')
        ],
      ),
    );
  }
}
