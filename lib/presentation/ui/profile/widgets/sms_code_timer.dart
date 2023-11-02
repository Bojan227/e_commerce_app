import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/profile/timer/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsCodeTimer extends StatelessWidget {
  const SmsCodeTimer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: BlocConsumer<TimerBloc, TimerState>(
        listener: (context, state) {
          if (state is TimerRunComplete) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 1),
                content: Text(
                  'New pin code was sent',
                ),
              ),
            );

            context.read<TimerBloc>()
              ..add(
                TimerReset(),
              )
              ..add(const TimerStarted(30));
          }
        },
        builder: (context, state) {
          return Text(
            'New Code 0:${state.duration < 10 ? "0${state.duration}" : state.duration}',
            style: textTheme.bodyLarge1.copyWith(
              color: colorPalette.grey500,
            ),
          );
        },
      ),
    );
  }
}
