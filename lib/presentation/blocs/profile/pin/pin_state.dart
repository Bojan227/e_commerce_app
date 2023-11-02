// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'pin_bloc.dart';

enum Status { initial, verified, verificationInProgress, failed }

class PinState extends Equatable {
  final List<String> pin;
  final Status pinStatus;

  const PinState({required this.pin, required this.pinStatus});

  @override
  List<Object> get props => [pin, pinStatus];

  PinState copyWith({
    List<String>? pin,
    Status? pinStatus,
  }) {
    return PinState(
      pin: pin ?? this.pin,
      pinStatus: pinStatus ?? this.pinStatus,
    );
  }
}
