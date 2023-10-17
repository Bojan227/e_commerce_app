part of 'review_bloc.dart';

enum Status { initial, loading, loaded, failed }

class ReviewState extends Equatable {
  final Status status;
  final List<Review> reviews;

  const ReviewState({required this.reviews, required this.status});

  ReviewState copyWith({
    List<Review>? reviews,
    Status? status,
  }) {
    return ReviewState(
      reviews: reviews ?? this.reviews,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status, reviews];
}
