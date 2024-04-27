part of 'search_bloc.dart';

class SearchEvent {}

class SearchOrderEvent extends SearchEvent {
  final String query;

  SearchOrderEvent(this.query);
}
