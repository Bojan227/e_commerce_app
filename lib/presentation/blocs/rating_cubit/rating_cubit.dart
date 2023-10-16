import 'package:bloc/bloc.dart';

class RatingCubit extends Cubit<int> {
  RatingCubit() : super(0);

  void updateRating(int value) {
    emit(value);
  }
}
