import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_option_card.dart';
import 'package:flutter/material.dart';

class DeliveryOptions extends StatelessWidget {
  const DeliveryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          DeliveryOptionCard(
            iconPath: 'lib/core/assets/car.png',
            title: 'By courier',
            subTitle: 'Tomorrow, any time',
            isSelected: true,
          ),
          DeliveryOptionCard(
            iconPath: 'lib/core/assets/cart.png',
            title: "I'll take it myself",
            subTitle: 'Any day from tomorrow',
            isSelected: false,
          )
        ],
      ),
    );
  }
}
