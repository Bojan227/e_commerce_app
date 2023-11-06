import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/product_card.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> products = [
  {
    "image": 'lib/core/assets/product_4.png',
    "price": 150.00,
    "description": "Wooden bedside table featuring a raised design on the door",
    "badge": true,
    "badgeLabel": 'new'
  },
  {
    "image": 'lib/core/assets/product_3.png',
    "price": 149.99,
    "description": "Chair made of ash wood sourced from responsib...",
    "badge": false,
    "badgeLabel": 'new'
  },
  {
    "image": 'lib/core/assets/product_2.png',
    "price": 125.00,
    "description": "Wooden bedside table featuring a raised design",
    "badge": true,
    "badgeLabel": '-40%'
  },
  {
    "image": 'lib/core/assets/product_1.png',
    "price": 199.99,
    "description": "Wooden bedside table featuring a raised design",
    "badge": false,
    "badgeLabel": ''
  },
];

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: mainConfig.padding1),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 24,
              childAspectRatio: 2.3 / 4),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                AutoRouter.of(context).push(
                  const PageRouteInfo(
                    'ProductNavWrapper',
                  ),
                );
              },
              child: ProductCard(
                image: products[index]['image'],
                price: products[index]['price'],
                description: products[index]['description'],
                badge: products[index]['badge'],
                badgeLabel: products[index]['badgeLabel'],
              ),
            );
          },
        ),
      ),
    );
  }
}
