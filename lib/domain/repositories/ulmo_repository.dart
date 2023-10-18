import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';

abstract class UlmoRepository {
  Future<Either<Failure, List<Review>>> getReviews(int productId);
  Future<Either<Failure, int>> addReview(NewReview review);
}
