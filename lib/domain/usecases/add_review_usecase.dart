import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';

import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';

class AddReviewUseCase {
  final UlmoRepository ulmoRepository;

  AddReviewUseCase({required this.ulmoRepository});

  Future<Either<Failure, Review>> call(NewReview review) async {
    return await ulmoRepository.addReview(review);
  }
}
