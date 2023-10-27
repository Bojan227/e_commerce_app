import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/router/router_config.gr.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/country_tile.dart';
import 'package:ecommerce_app/presentation/ui/widgets/colored_safe_area.dart';
import 'package:ecommerce_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

final countries = [
  {'name': 'Great Britain', 'flag': 'lib/core/assets/gb.png'},
  {'name': 'Denmark', 'flag': 'lib/core/assets/denmark.png'},
  {'name': 'France', 'flag': 'lib/core/assets/france.png'},
];

@RoutePage()
class CountryList extends StatelessWidget {
  const CountryList({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(114),
          child: CustomAppBar(
            children: [
              SizedBox(
                height: 56,
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_sharp,
                  ),
                ),
              ),
              Container(
                height: 58,
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'choose your country',
                  style: textTheme.headlineLarge
                      .copyWith(color: colorPalette.black),
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var country in countries)
                  CountryTile(
                    title: country['name']!,
                    flag: country['flag']!,
                    onTap: () {
                      AutoRouter.of(context).push(
                        PageRouteInfo(
                          'PhoneLogin',
                          args: PhoneLoginArgs(
                            prefixFlag: country['flag']!,
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
