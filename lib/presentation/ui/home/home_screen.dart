import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/blocs/rooms/rooms_bloc.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/app_bar.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/category_list.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/stories_list.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  decoration: BoxDecoration(color: colorPalette.white),
                  padding: EdgeInsets.symmetric(
                    horizontal: mainConfig.padding1,
                  ),
                  child: Column(
                    children: [
                      SearchBarWidget(
                        onSearch: (searchQuery) {
                          context.read<RoomsBloc>().add(
                                GetRooms(
                                  searchQuery: searchQuery,
                                ),
                              );
                        },
                      ),
                      const StoriesList(),
                      const CategoryList(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
