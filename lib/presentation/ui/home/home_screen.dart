import 'package:ecommerce_app/presentation/ui/home/widgets/category_list.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/stories_list.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 158,
            bottom: PreferredSize(
              preferredSize: Size(343, 42),
              child: Text('ulmo'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Column(
                    children: [
                      SearchBarWidget(),
                      StoriesList(),
                      CategoryList(),
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
