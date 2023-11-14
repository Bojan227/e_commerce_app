part of 'rooms_bloc.dart';

sealed class RoomsState extends Equatable {
  const RoomsState();

  @override
  List<Object> get props => [];
}

final class RoomsInitial extends RoomsState {}

final class RoomsLoading extends RoomsState {}

final class RoomsLoaded extends RoomsState {
  final List<RoomEntity> rooms;

  const RoomsLoaded({required this.rooms});

  @override
  List<Object> get props => [rooms];
}

final class RoomsFailure extends RoomsState {}
