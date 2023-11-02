import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/blocs/profile/pin/pin_bloc.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/pin_app_bar.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/pin_screen.dart';
import 'package:ecommerce_app/presentation/ui/widgets/colored_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({super.key});

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<TextEditingController> controllers =
      List.generate(5, (index) => TextEditingController());
  List<FocusNode> focusNodes =
      List.generate(maxPinNumber, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }

    for (var controller in controllers) {
      controller.dispose();
    }

    super.dispose();
  }

  void onSubmit(BuildContext context) {
    context.read<PinBloc>().add(VerifyPin());
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(184), child: PinAppBar()),
        body: BlocConsumer<PinBloc, PinState>(
          listener: (context, state) {
            if (state.pinStatus == Status.verified) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text("Pin Verified"),
                ),
              );

              for (FocusNode node in focusNodes) {
                node.unfocus();
              }

              Timer(
                const Duration(seconds: 3),
                () {
                  AutoRouter.of(context).push(
                    const PageRouteInfo('ProfileSetup'),
                  );
                },
              );
            }
          },
          builder: (context, state) => PinScreen(
            controllers: controllers,
            focusNodes: focusNodes,
            formKey: _formKey,
            onSubmit: onSubmit,
            pinStatus: state.pinStatus,
          ),
        ),
      ),
    );
  }
}
