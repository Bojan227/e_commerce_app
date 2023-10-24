import 'package:ecommerce_app/presentation/ui/bag/widgets/bag_product_description.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/product_quantity_row.dart';
import 'package:flutter/material.dart';

class BagProduct extends StatelessWidget {
  final String image;
  final String price;
  final String description;

  final int notificationDuration = 3;

  const BagProduct(
      {super.key,
      required this.image,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 94,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BagProductDesription(
                  price: price,
                  description: description,
                  notificationDuration: notificationDuration,
                ),
                const SizedBox(
                  height: 19,
                ),
                const ProductQuantityRow()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
