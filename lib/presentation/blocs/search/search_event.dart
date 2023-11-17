part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GetSearchResults extends SearchEvent {
  final String searchQuery;

  const GetSearchResults({required this.searchQuery});

  @override
  List<Object> get props => [searchQuery];
}
