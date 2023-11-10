part of 'review_bloc.dart';

enum Status { initial, loading, loaded, failed }

class ReviewState extends Equatable {
  final Status status;
  final List<Review> reviews;
  final Status newReviewStatus;
  final List<File> reviewImages;

  const ReviewState({
    required this.reviews,
    required this.status,
    required this.newReviewStatus,
    required this.reviewImages,
  });

  ReviewState copyWith(
      {List<Review>? reviews,
      Status? status,
      Status? newReviewStatus,
      List<File>? reviewImages}) {
    return ReviewState(
      reviews: reviews ?? this.reviews,
      status: status ?? this.status,
      newReviewStatus: newReviewStatus ?? this.newReviewStatus,
      reviewImages: reviewImages ?? this.reviewImages,
    );
  }

  @override
  List<Object?> get props => [status, reviews, newReviewStatus, reviewImages];
}
