import 'package:ecommerce_app/core/error/exception.dart';
import 'package:ecommerce_app/core/isar/collections/room.dart';
import 'package:ecommerce_app/core/isar/isar_helper.dart';
import 'package:ecommerce_app/core/sqflite/sqflite_helper.dart';
import 'package:ecommerce_app/data/models/new_review_dto.dart';
import 'package:ecommerce_app/data/models/review_dto.dart';

abstract class UlmoLocalDataSource {
  Future<List<ReviewDto>> getReviews(int productId);
  Future<ReviewDto> addReview(NewReviewDto review);
  Future<List<Room>> getRooms(String searchQuery);
}

class UlmoLocalDataSourceImpl implements UlmoLocalDataSource {
  final SqfHelper sqfHelper;
  final IsarHelper isarHelper;

  UlmoLocalDataSourceImpl({required this.isarHelper, required this.sqfHelper});

  @override
  Future<List<ReviewDto>> getReviews(int productId) async {
    final List<Map<String, dynamic>>? data =
        await sqfHelper.getReviewsByProductId(productId);

    if (data == null) throw CacheException();

    final List<ReviewDto> reviews =
        data.map((review) => ReviewDto.fromJson(review)).toList();

    return reviews;
  }

  @override
  Future<ReviewDto> addReview(NewReviewDto review) async {
    final reviewId = await sqfHelper.addReview(review.toJson());

    if (reviewId == null) throw CacheException();

    final reviewList = await sqfHelper.getReviewByReviewId(reviewId);

    if (reviewList == null) throw CacheException();

    final reviewDto = ReviewDto.fromJson(reviewList[0]);

    return reviewDto;
  }

  @override
  Future<List<Room>> getRooms(String searchQuery) async {
    try {
      final rooms = await isarHelper.getRooms(searchQuery);
      return rooms;
    } catch (e) {
      throw CacheException();
    }
  }
}
