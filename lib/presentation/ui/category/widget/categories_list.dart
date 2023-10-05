import 'package:ecommerce_app/presentation/ui/category/widget/category_item.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> categories = [
  {"avatar": "lib/core/assets/citem_1.png", "label": "Furniture"},
  {"avatar": "lib/core/assets/citem_2.png", "label": "Lighting"},
  {"avatar": "lib/core/assets/citem_3.png", "label": "Rugs"},
  {"avatar": "lib/core/assets/citem_4.png", "label": "Mirrors"},
  {"avatar": "lib/core/assets/citem_1.png", "label": "Blankets"},
  {"avatar": "lib/core/assets/citem_2.png", "label": "Cushions"},
  {"avatar": "lib/core/assets/citem_3.png", "label": "Curtains"},
  {"avatar": "lib/core/assets/citem_4.png", "label": "Furniture"},
  {"avatar": "lib/core/assets/citem_1.png", "label": "Lighting"},
  {"avatar": "lib/core/assets/citem_2.png", "label": "Rugs"},
  {"avatar": "lib/core/assets/citem_3.png", "label": "Blankets"},
];

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: categories
              .map(
                (category) => CategoryItem(
                  image: category['avatar'],
                  label: category['label'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
