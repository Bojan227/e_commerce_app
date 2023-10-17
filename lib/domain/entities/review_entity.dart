import 'package:ecommerce_app/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_entity.freezed.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required int reviewId,
    required int rating,
    required String userReview,
    required List<String> reviewImages,
    required DateTime createdAt,
    required User user,
  }) = _Review;
}
