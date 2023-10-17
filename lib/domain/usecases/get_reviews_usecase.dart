import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';

class GetReviewsUseCase {
  final UlmoRepository ulmoRepository;

  GetReviewsUseCase({required this.ulmoRepository});

  Future<Either<Failure, List<Review>>> call(int productId) async {
    return await ulmoRepository.getReviews(productId);
  }
}
