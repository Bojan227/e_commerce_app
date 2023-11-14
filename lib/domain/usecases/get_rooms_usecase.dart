import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:ecommerce_app/domain/entities/room_entity.dart';
import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';

class GetRoomsUseCase {
  final UlmoRepository ulmoRepository;

  GetRoomsUseCase({required this.ulmoRepository});

  Future<Either<Failure, List<RoomEntity>>> call(String searchQuery) async {
    return await ulmoRepository.getRooms(searchQuery);
  }
}
