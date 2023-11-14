import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/entities/room_entity.dart';
import 'package:ecommerce_app/domain/usecases/get_rooms_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'rooms_event.dart';
part 'rooms_state.dart';

class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  final GetRoomsUseCase getRoomsUseCase;

  RoomsBloc({required this.getRoomsUseCase}) : super(RoomsInitial()) {
    on<GetRooms>(
      _onGetRooms,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(seconds: 1))
          .distinct()
          .switchMap(mapper),
    );
  }

  Future<void> _onGetRooms(GetRooms event, Emitter emit) async {
    emit(RoomsLoading());

    final rooms = await getRoomsUseCase.call(event.searchQuery);
    rooms.fold(
      (l) => emit(RoomsFailure()),
      (r) => emit(RoomsLoaded(rooms: r)),
    );
  }
}
