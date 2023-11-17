import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    required int id,
    required int rating,
    required String review,
    required String review_images,
    required String createdAt,
    required int user_id,
    required String full_name,
    required String phone,
    required String email,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, Object?> json) =>
      _$ReviewDtoFromJson(json);
}
