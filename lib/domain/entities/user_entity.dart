import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int userId,
    required String fullName,
    required String phone,
    required String email,
  }) = _User;
}
