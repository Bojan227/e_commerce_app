import 'package:ecommerce_app/domain/entities/room_entity.dart';
import 'package:ecommerce_app/domain/usecases/get_rooms_usecase.dart';
import 'package:ecommerce_app/presentation/blocs/search/search_bloc.dart';

class RoomsBloc extends SearchBloc<RoomEntity> {
  final GetRoomsUseCase getRoomsUseCase;

  RoomsBloc({required this.getRoomsUseCase})
      : super(fetchData: getRoomsUseCase.call);
}
