part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(0) int count,
  }) = _OrdersState;
}
