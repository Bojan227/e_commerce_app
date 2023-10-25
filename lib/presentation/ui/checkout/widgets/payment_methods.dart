import 'package:ecommerce_app/presentation/ui/checkout/widgets/list_tile_card.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          ListTileCard(
            iconPath: 'lib/core/assets/mastercard.png',
            title: 'Mastercard 9833',
            subTitle: '734, Exp: 12/29',
            isSelected: true,
          ),
          ListTileCard(
            iconPath: 'lib/core/assets/visa.png',
            title: 'Visa 7233',
            subTitle: '734, Exp: 11/29',
            isSelected: false,
          ),
          ListTileCard(
            iconPath: 'lib/core/assets/apple.png',
            title: 'Apple pay',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
