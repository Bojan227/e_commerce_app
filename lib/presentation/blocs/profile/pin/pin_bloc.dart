import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/constants/main.dart';
import 'package:equatable/equatable.dart';

part 'pin_event.dart';
part 'pin_state.dart';

class PinBloc extends Bloc<PinEvent, PinState> {
  static const String _validPin = '12345';

  PinBloc()
      : super(PinState(
            pin: List.generate(maxPinNumber, (index) => ''),
            pinStatus: Status.initial)) {
    on<UpdatePin>(_onUpdatePin);
    on<VerifyPin>(_onVerifyPin);
  }

  void _onUpdatePin(UpdatePin event, Emitter emit) {
    List<String> pin = state.pin;

    pin[event.position] = event.value;

    emit(
      state.copyWith(pin: pin),
    );
  }

  void _onVerifyPin(VerifyPin event, Emitter emit) {
    emit(state.copyWith(pinStatus: Status.verificationInProgress));

    if (state.pin.join('') == _validPin) {
      emit(
        state.copyWith(
          pinStatus: Status.verified,
          pin: List.generate(
            maxPinNumber,
            (index) => '',
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(pinStatus: Status.failed),
      );
    }
  }
}
