part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(duration) : super(duration);
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(int duration) : super(duration);
}

class TimerRunComplete extends TimerState {
  /// at this state, timer’s value is 0
  const TimerRunComplete() : super(0);
}
