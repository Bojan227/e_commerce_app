import 'package:ecommerce_app/presentation/ui/home/home_screen.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/bottom_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomTabContainer(),
      body: HomeScreen(),
    );
  }
}
