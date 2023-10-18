import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/usecases/add_review_usecase.dart';
import 'package:ecommerce_app/domain/usecases/get_reviews_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final GetReviewsUseCase getReviewsUseCase;
  final AddReviewUseCase addReviewUseCase;

  ReviewBloc({required this.getReviewsUseCase, required this.addReviewUseCase})
      : super(
          const ReviewState(
              reviews: [],
              status: Status.initial,
              newReviewStatus: Status.initial),
        ) {
    on<GetReviews>(_onGetReviews);
    on<AddReviewEvent>(_onAddReview);
  }

  Future<void> _onGetReviews(GetReviews event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));

    final reviews = await getReviewsUseCase.call(int.parse(event.productId));
    reviews.fold(
      (l) => emit(
        state.copyWith(
          status: Status.failed,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: Status.loaded,
          reviews: r,
        ),
      ),
    );
  }

  Future<void> _onAddReview(AddReviewEvent event, Emitter emit) async {
    emit(state.copyWith(newReviewStatus: Status.loading));

    final response = await addReviewUseCase.call(event.newReview);
    response.fold(
      (l) => emit(
        state.copyWith(
          newReviewStatus: Status.failed,
        ),
      ),
      (productId) => emit(
        state.copyWith(
          newReviewStatus: Status.loaded,
        ),
      ),
    );
  }
}
