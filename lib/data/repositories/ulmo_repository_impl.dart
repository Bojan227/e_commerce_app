import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/data/datasources/ulmo_local_datasource.dart';
import 'package:ecommerce_app/data/models/review_dto.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/entities/user_entity.dart';
import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';

class UlmoRepositoryImpl implements UlmoRepository {
  final UlmoLocalDataSource ulmoLocalDataSource;

  UlmoRepositoryImpl({required this.ulmoLocalDataSource});

  @override
  Future<Either<Failure, List<Review>>> getReviews(int productId) async {
    final List<ReviewDto> reviews =
        await ulmoLocalDataSource.getReviews(productId);

    final List<Review> reviewsMapped = reviews
        .map(
          (review) => Review(
            reviewId: review.id,
            rating: review.rating,
            userReview: review.review,
            reviewImages: [],
            createdAt: DateTime.parse(review.createdAt),
            user: User(
              userId: review.user_id,
              fullName: review.full_name,
              phone: review.phone,
              email: review.email,
            ),
          ),
        )
        .toList();

    return Right(reviewsMapped);
  }
}
