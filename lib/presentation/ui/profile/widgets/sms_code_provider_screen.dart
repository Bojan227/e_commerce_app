import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/domain/entities/ticker.dart';
import 'package:ecommerce_app/presentation/blocs/profile/pin/pin_bloc.dart';
import 'package:ecommerce_app/presentation/blocs/profile/timer/timer_bloc.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/sms_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SmsCodeProvider extends StatelessWidget {
  const SmsCodeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PinBloc(),
        ),
        BlocProvider(
          create: (context) => TimerBloc(
            ticker: const Ticker(),
          )..add(
              const TimerStarted(30),
            ),
        ),
      ],
      child: const SmsCodeScreen(),
    );
  }
}
