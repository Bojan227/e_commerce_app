part of 'review_bloc.dart';

@immutable
sealed class ReviewEvent extends Equatable {}

class GetReviews extends ReviewEvent {
  final String productId;

  GetReviews({required this.productId});

  @override
  List<Object?> get props => [productId];
}

class AddReviewEvent extends ReviewEvent {
  final NewReview newReview;

  AddReviewEvent({required this.newReview});

  @override
  List<Object?> get props => [newReview];
}

class AddReviewImageEvent extends ReviewEvent {
  final File image;

  AddReviewImageEvent({required this.image});

  @override
  List<Object?> get props => [image];
}
