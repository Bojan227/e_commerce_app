// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'story_counter_cubit.dart';

class StoryCounterState {
  final int currentIndex;
  final Timer? timer;

  StoryCounterState({required this.currentIndex, this.timer});

  StoryCounterState copyWith({
    int? currentIndex,
    Timer? timer,
  }) {
    return StoryCounterState(
      currentIndex: currentIndex ?? this.currentIndex,
      timer: timer ?? this.timer,
    );
  }
}
