import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/blocs/product/cubit/product_images_controller_cubit.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/controll_item.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/controll_item_selected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ControllWidget extends StatelessWidget {
  const ControllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 16,
      left: screenWidth / 2 - 10,
      child: Container(
        width: 47,
        height: 12,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: colorPalette.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: BlocBuilder<ProductImagesControllerCubit, int>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int x = 0; x < numOfProductPageImages; x += 1)
                  state == x
                      ? const ControllItemSelected()
                      : const ControllItem()
              ],
            );
          },
        ),
      ),
    );
  }
}
