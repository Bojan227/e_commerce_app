import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'room_entity.freezed.dart';

@freezed
class RoomEntity with _$RoomEntity {
  const factory RoomEntity({
    required int roomId,
    required String name,
    required String image,
  }) = _RoomEntity;
}
