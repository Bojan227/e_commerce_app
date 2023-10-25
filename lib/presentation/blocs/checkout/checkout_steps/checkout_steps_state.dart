part of 'checkout_steps_cubit.dart';

class CheckoutStepsState extends Equatable {
  final int currentStep;

  const CheckoutStepsState({required this.currentStep});

  @override
  List<Object> get props => [currentStep];
}
