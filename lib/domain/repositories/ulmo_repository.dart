import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/entities/room_entity.dart';

abstract class UlmoRepository {
  Future<Either<Failure, List<Review>>> getReviews(int productId);
  Future<Either<Failure, Review>> addReview(NewReview review);
  Future<Either<Failure, List<RoomEntity>>> getRooms(String searchQuery);
}
