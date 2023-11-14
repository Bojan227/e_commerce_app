part of 'rooms_bloc.dart';

sealed class RoomsEvent extends Equatable {
  const RoomsEvent();

  @override
  List<Object> get props => [];
}

class GetRooms extends RoomsEvent {
  final String searchQuery;

  const GetRooms({required this.searchQuery});

  @override
  List<Object> get props => [searchQuery];
}
