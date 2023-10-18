part of 'review_bloc.dart';

enum Status { initial, loading, loaded, failed }

class ReviewState extends Equatable {
  final Status status;
  final List<Review> reviews;
  final Status newReviewStatus;

  const ReviewState({
    required this.reviews,
    required this.status,
    required this.newReviewStatus,
  });

  ReviewState copyWith(
      {List<Review>? reviews, Status? status, Status? newReviewStatus}) {
    return ReviewState(
      reviews: reviews ?? this.reviews,
      status: status ?? this.status,
      newReviewStatus: newReviewStatus ?? this.newReviewStatus,
    );
  }

  @override
  List<Object?> get props => [status, reviews, newReviewStatus];
}
