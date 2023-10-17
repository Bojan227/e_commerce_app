import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/usecases/get_reviews_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final GetReviewsUseCase getReviewsUseCase;

  ReviewBloc({required this.getReviewsUseCase})
      : super(
          const ReviewState(
            reviews: [],
            status: Status.initial,
          ),
        ) {
    on<GetReviews>(_onGetReviews);
  }

  Future<void> _onGetReviews(GetReviews event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));

    final reviews = await getReviewsUseCase.call(int.parse(event.productId));
    reviews.fold(
      (l) => emit(state.copyWith(status: Status.failed)),
      (r) => emit(
        state.copyWith(status: Status.loaded, reviews: r),
      ),
    );
  }
}
