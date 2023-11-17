import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/transformers.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc<T> extends Bloc<SearchEvent, SearchState> {
  final Future<Either<Failure, List<T>>> Function(String searchQuery) fetchData;

  SearchBloc({required this.fetchData}) : super(SearchInitial()) {
    on<GetSearchResults>(
      _onGetSearchResults,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(seconds: 1))
          .distinct()
          .switchMap(mapper),
    );
  }

  Future<void> _onGetSearchResults(GetSearchResults event, Emitter emit) async {
    emit(SearchLoading());

    final rooms = await fetchData(event.searchQuery);
    rooms.fold(
      (l) => emit(SearchFailure()),
      (r) => emit(SearchLoaded<T>(searchResults: r)),
    );
  }
}
