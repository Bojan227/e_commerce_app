import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/core/isar/collections/room.dart';
import 'package:ecommerce_app/core/utils/image_converter.dart';
import 'package:ecommerce_app/data/datasources/ulmo_local_datasource.dart';
import 'package:ecommerce_app/data/models/new_review_dto.dart';
import 'package:ecommerce_app/data/models/review_dto.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/domain/entities/review_entity.dart';
import 'package:ecommerce_app/domain/entities/room_entity.dart';
import 'package:ecommerce_app/domain/entities/user_entity.dart';
import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';

class UlmoRepositoryImpl implements UlmoRepository {
  final UlmoLocalDataSource ulmoLocalDataSource;

  UlmoRepositoryImpl({required this.ulmoLocalDataSource});

  @override
  Future<Either<Failure, List<Review>>> getReviews(int productId) async {
    final List<ReviewDto> reviews =
        await ulmoLocalDataSource.getReviews(productId);

    final List<Review> reviewsMapped = reviews.map(
      (review) {
        final List<dynamic> reviewImagesDecoded =
            jsonDecode(review.review_images);

        return Review(
          reviewId: review.id,
          rating: review.rating,
          userReview: review.review,
          reviewImages: decodeBase64Images(reviewImagesDecoded),
          createdAt: DateTime.parse(review.createdAt),
          user: User(
            userId: review.user_id,
            fullName: review.full_name,
            phone: review.phone,
            email: review.email,
          ),
        );
      },
    ).toList();

    return Right(reviewsMapped);
  }

  @override
  Future<Either<Failure, Review>> addReview(NewReview review) async {
    final String reviewImages = jsonEncode(review.reviewImages.map((image) {
      var imagebytes = image.readAsBytesSync();
      String base64Image = base64String(imagebytes);

      return base64Image;
    }).toList());

    final newReviewDto = NewReviewDto(
      rating: review.rating,
      review: review.userReview,
      review_images: reviewImages,
      createdAt: DateTime.now().toIso8601String(),
      user_id: review.userId,
      product_id: review.productId,
    );

    final reviewDto = await ulmoLocalDataSource.addReview(newReviewDto);

    final List<dynamic> reviewImagesDecoded =
        jsonDecode(reviewDto.review_images);

    final reviewEntity = Review(
      reviewId: reviewDto.id,
      rating: reviewDto.rating,
      userReview: reviewDto.review,
      reviewImages: decodeBase64Images(reviewImagesDecoded),
      createdAt: DateTime.parse(reviewDto.createdAt),
      user: User(
        userId: reviewDto.user_id,
        fullName: reviewDto.full_name,
        phone: reviewDto.phone,
        email: reviewDto.email,
      ),
    );

    return Right(reviewEntity);
  }

  @override
  Future<Either<Failure, List<RoomEntity>>> getRooms(String searchQuery) async {
    try {
      final List<Room> rooms = await ulmoLocalDataSource.getRooms(searchQuery);

      final List<RoomEntity> roomEntities = rooms
          .map((room) =>
              RoomEntity(roomId: room.id, name: room.name!, image: room.image!))
          .toList();

      return Right(roomEntities);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
