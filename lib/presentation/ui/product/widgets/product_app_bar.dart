import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/blocs/product/cubit/product_images_controller_cubit.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/controll_widget.dart';
import 'package:ecommerce_app/presentation/ui/widgets/circle_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final productImages = [
  'lib/core/assets/main_product_1.png',
  'lib/core/assets/product_img_2.png',
  'lib/core/assets/main_product_1.png',
  'lib/core/assets/product_img_2.png',
  'lib/core/assets/main_product_1.png'
];

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return SliverAppBar(
      pinned: true,
      expandedHeight: 458,
      flexibleSpace: Stack(
        children: [
          BlocBuilder<ProductImagesControllerCubit, int>(
            builder: (context, state) {
              return GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity! > 0) {
                    context
                        .read<ProductImagesControllerCubit>()
                        .previousImage();
                  }

                  if (details.primaryVelocity! < 0) {
                    context.read<ProductImagesControllerCubit>().nextImage();
                  }
                },
                child: Image.asset(
                  productImages[state],
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
          const ControllWidget()
        ],
      ),
      leadingWidth: double.infinity,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleBox(
            boxColor: colorPalette.white,
            icon: Icon(
              Icons.arrow_back,
              color: colorPalette.black,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
            },
          ),
          CircleBox(
            boxColor: colorPalette.white,
            icon: Icon(
              Icons.favorite,
              color: colorPalette.black,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
