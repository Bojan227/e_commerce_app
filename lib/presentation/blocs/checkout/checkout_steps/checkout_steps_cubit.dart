import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'checkout_steps_state.dart';

const maxSteps = 3;

class CheckoutStepsCubit extends Cubit<CheckoutStepsState> {
  CheckoutStepsCubit()
      : super(
          const CheckoutStepsState(currentStep: 1),
        );

  void nextStep() {
    if (state.currentStep == maxSteps) return;

    emit(CheckoutStepsState(currentStep: state.currentStep + 1));
  }

  void previousStep() {
    if (state.currentStep == 1) return;

    emit(CheckoutStepsState(currentStep: state.currentStep - 1));
  }
}
