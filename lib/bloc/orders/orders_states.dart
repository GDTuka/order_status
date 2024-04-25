part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    //TODO() remove when real data
    @Default(0) int count,
  }) = _OrdersState;
}
