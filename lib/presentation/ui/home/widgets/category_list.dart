import 'package:ecommerce_app/presentation/blocs/rooms/rooms_bloc.dart';
import 'package:ecommerce_app/presentation/blocs/search/search_bloc.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/category_item.dart';
import 'package:ecommerce_app/presentation/ui/widgets/column_with_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsBloc, SearchState>(
      builder: (context, state) {
        if (state is SearchLoaded) {
          if (state.searchResults.isEmpty) {
            return const Center(
              child: Text('No rooms to show'),
            );
          }

          return SingleChildScrollView(
            child: ColumnWithSpacing(
              hasLeadingSpace: true,
              spacing: 16,
              children: List.generate(
                state.searchResults.length,
                (index) => CategoryItem(
                  label: state.searchResults[index].name,
                  image: state.searchResults[index].image,
                ),
              ),
            ),
          );
        }

        if (state is SearchLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SearchFailure) {
          return const Center(
            child: Text('Please try again later!'),
          );
        }

        return Container();
      },
    );
  }
}
