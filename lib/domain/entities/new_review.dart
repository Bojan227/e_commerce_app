import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'new_review.freezed.dart';

@freezed
class NewReview with _$NewReview {
  const factory NewReview({
    required int rating,
    required String userReview,
    required List<String> reviewImages,
    required int userId,
    required int productId,
  }) = _NewReview;
}
