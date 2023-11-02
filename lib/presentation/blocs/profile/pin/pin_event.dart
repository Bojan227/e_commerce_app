part of 'pin_bloc.dart';

sealed class PinEvent extends Equatable {
  const PinEvent();

  @override
  List<Object> get props => [];
}

class UpdatePin extends PinEvent {
  final int position;
  final String value;

  const UpdatePin({required this.position, required this.value});

  @override
  List<Object> get props => [position, value];
}

class VerifyPin extends PinEvent {}
