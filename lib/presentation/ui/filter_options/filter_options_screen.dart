import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilterOptionsScreen extends StatelessWidget {
  final String filterOption;

  const FilterOptionsScreen({super.key, required this.filterOption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filterOption),
      ),
    );
  }
}
