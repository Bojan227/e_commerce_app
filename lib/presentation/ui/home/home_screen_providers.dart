import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/presentation/blocs/rooms/rooms_bloc.dart';
import 'package:ecommerce_app/presentation/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreenProviders extends StatelessWidget {
  HomeScreenProviders({super.key});

  final roomsBloc = getIt<RoomsBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: roomsBloc..add(const GetRooms(searchQuery: '')),
      child: const HomeScreen(),
    );
  }
}
