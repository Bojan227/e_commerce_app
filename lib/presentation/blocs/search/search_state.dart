part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchLoaded<T> extends SearchState {
  final List<T> searchResults;

  const SearchLoaded({required this.searchResults});

  @override
  List<Object> get props => [searchResults];
}

final class SearchFailure extends SearchState {}
