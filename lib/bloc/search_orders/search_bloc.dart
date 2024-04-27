import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/data/rds/order_rds/order_rds.dart';
import 'package:order_status/domain/order_status/order_repository.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchOrderEvent>(
      _onSearch,
    );
  }

  Dio dio = getIt<Dio>();

  _onSearch(SearchOrderEvent event, Emitter<SearchState> emit) async {
    if (event.query.length < 3) return;
    final res = await OrderRepository(orderRDS: OrderRDS(dio: dio))
        .getOrderStatusById(event.query);
    emit(SearchState(order: res));
  }
}
