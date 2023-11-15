import 'package:ecommerce_app/presentation/ui/bag/widgets/bag_product.dart';
import 'package:flutter/material.dart';

class BagProductsList extends StatelessWidget {
  const BagProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          BagProduct(
            image: 'lib/core/assets/product_1.png',
            price: '\$150.00',
            description: 'Wooden bedside table featuring a raised design',
          ),
          BagProduct(
            image: 'lib/core/assets/product_4.png',
            price: '\$85.00',
            description: 'Wooden bedside table featuring a raised design',
          ),
          BagProduct(
            image: 'lib/core/assets/product_4.png',
            price: '\$29.99',
            description: 'Wooden bedside table featuring a raised design',
          ),
        ],
      ),
    );
  }
}
