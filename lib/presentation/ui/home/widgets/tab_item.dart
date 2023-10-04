import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 16),
      child: Image(
        image: AssetImage(imagePath),
        width: 32,
        height: 32,
      ),
    );
  }
}
