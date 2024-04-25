part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.loadOrders() = _LoadOrders;
  const factory OrdersEvent.getOrderData(String orderId) = _GetOrderData;
  const factory OrdersEvent.sortOrders(OrderSortEnum orderSort) = _SortOrders;
}
