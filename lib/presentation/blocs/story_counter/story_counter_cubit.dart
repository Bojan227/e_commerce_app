import 'dart:async';

import 'package:bloc/bloc.dart';

part 'story_counter_state.dart';

class StoryCounterCubit extends Cubit<StoryCounterState> {
  StoryCounterCubit()
      : super(
          StoryCounterState(
            currentIndex: 0,
          ),
        );

  void initTimer(int duration) {
    emit(
      state.copyWith(
        timer: Timer(
          Duration(seconds: duration),
          () {
            incrementIndex();
          },
        ),
      ),
    );
  }

  void incrementIndex() {
    emit(
      state.copyWith(currentIndex: state.currentIndex + 1),
    );
  }

  void decrementIndex() {
    if (state.currentIndex == 0) return;

    emit(
      state.copyWith(currentIndex: state.currentIndex - 1),
    );
  }

  void updateIndex(int index) {
    emit(
      state.copyWith(currentIndex: index),
    );
  }

  void cancelTimer() {
    if (state.timer != null && state.timer!.isActive) {
      state.timer?.cancel();
    }
  }
}
