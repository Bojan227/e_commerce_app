import 'package:ecommerce_app/presentation/ui/product/widgets/button.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/color_chips.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/description_widget.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final double price;
  final String description;

  const ProductInfo(
      {super.key, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          DescriptionWidget(price: price, description: description),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: ColorChips(),
          ),
          const ButtonWidget()
        ],
      ),
    );
  }
}
