part of 'review_bloc.dart';

@immutable
sealed class ReviewEvent extends Equatable {}

class GetReviews extends ReviewEvent {
  final String productId;

  GetReviews({required this.productId});

  @override
  List<Object?> get props => [productId];
}
