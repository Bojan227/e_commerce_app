import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'new_review_dto.freezed.dart';
part 'new_review_dto.g.dart';

@freezed
class NewReviewDto with _$NewReviewDto {
  const factory NewReviewDto({
    required int rating,
    required String review,
    // required String reviewImages,
    required String createdAt,
    required int user_id,
    required int product_id,
  }) = _NewReviewDto;

  factory NewReviewDto.fromJson(Map<String, Object?> json) =>
      _$NewReviewDtoFromJson(json);
}
