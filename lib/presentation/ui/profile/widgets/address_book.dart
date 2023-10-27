import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/address_tile.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddressBook extends StatelessWidget {
  const AddressBook({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Address book',
          style: textTheme.bodyLarge1.copyWith(
            color: colorPalette.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mainConfig.padding1,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mainConfig.padding2,
                ),
                child: const Column(
                  children: [
                    AddressTile(
                      title: 'London, 221B Baker Street',
                      subtitle: 'Hanna Gouse, +7 932 123-43-23',
                    ),
                    AddressTile(
                      title: 'Moscow, Udaltsova 65a',
                      subtitle: 'Jane Smith, +7 912 343-12-54',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextButton(
                label: 'Add new address',
                bgColor: colorPalette.grey100,
                titleColor: colorPalette.black,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
