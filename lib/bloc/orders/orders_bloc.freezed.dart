// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) getOrderData,
    required TResult Function(OrderSortEnum orderSort) sortOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? getOrderData,
    TResult? Function(OrderSortEnum orderSort)? sortOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? getOrderData,
    TResult Function(OrderSortEnum orderSort)? sortOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_GetOrderData value) getOrderData,
    required TResult Function(_SortOrders value) sortOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_GetOrderData value)? getOrderData,
    TResult? Function(_SortOrders value)? sortOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_GetOrderData value)? getOrderData,
    TResult Function(_SortOrders value)? sortOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadOrdersImplCopyWith<$Res> {
  factory _$$LoadOrdersImplCopyWith(
          _$LoadOrdersImpl value, $Res Function(_$LoadOrdersImpl) then) =
      __$$LoadOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadOrdersImpl>
    implements _$$LoadOrdersImplCopyWith<$Res> {
  __$$LoadOrdersImplCopyWithImpl(
      _$LoadOrdersImpl _value, $Res Function(_$LoadOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadOrdersImpl implements _LoadOrders {
  const _$LoadOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.loadOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) getOrderData,
    required TResult Function(OrderSortEnum orderSort) sortOrders,
  }) {
    return loadOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? getOrderData,
    TResult? Function(OrderSortEnum orderSort)? sortOrders,
  }) {
    return loadOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? getOrderData,
    TResult Function(OrderSortEnum orderSort)? sortOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_GetOrderData value) getOrderData,
    required TResult Function(_SortOrders value) sortOrders,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_GetOrderData value)? getOrderData,
    TResult? Function(_SortOrders value)? sortOrders,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_GetOrderData value)? getOrderData,
    TResult Function(_SortOrders value)? sortOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements OrdersEvent {
  const factory _LoadOrders() = _$LoadOrdersImpl;
}

/// @nodoc
abstract class _$$GetOrderDataImplCopyWith<$Res> {
  factory _$$GetOrderDataImplCopyWith(
          _$GetOrderDataImpl value, $Res Function(_$GetOrderDataImpl) then) =
      __$$GetOrderDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$GetOrderDataImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderDataImpl>
    implements _$$GetOrderDataImplCopyWith<$Res> {
  __$$GetOrderDataImplCopyWithImpl(
      _$GetOrderDataImpl _value, $Res Function(_$GetOrderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderDataImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderDataImpl implements _GetOrderData {
  const _$GetOrderDataImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.getOrderData(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDataImplCopyWith<_$GetOrderDataImpl> get copyWith =>
      __$$GetOrderDataImplCopyWithImpl<_$GetOrderDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) getOrderData,
    required TResult Function(OrderSortEnum orderSort) sortOrders,
  }) {
    return getOrderData(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? getOrderData,
    TResult? Function(OrderSortEnum orderSort)? sortOrders,
  }) {
    return getOrderData?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? getOrderData,
    TResult Function(OrderSortEnum orderSort)? sortOrders,
    required TResult orElse(),
  }) {
    if (getOrderData != null) {
      return getOrderData(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_GetOrderData value) getOrderData,
    required TResult Function(_SortOrders value) sortOrders,
  }) {
    return getOrderData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_GetOrderData value)? getOrderData,
    TResult? Function(_SortOrders value)? sortOrders,
  }) {
    return getOrderData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_GetOrderData value)? getOrderData,
    TResult Function(_SortOrders value)? sortOrders,
    required TResult orElse(),
  }) {
    if (getOrderData != null) {
      return getOrderData(this);
    }
    return orElse();
  }
}

abstract class _GetOrderData implements OrdersEvent {
  const factory _GetOrderData(final String orderId) = _$GetOrderDataImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderDataImplCopyWith<_$GetOrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortOrdersImplCopyWith<$Res> {
  factory _$$SortOrdersImplCopyWith(
          _$SortOrdersImpl value, $Res Function(_$SortOrdersImpl) then) =
      __$$SortOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderSortEnum orderSort});
}

/// @nodoc
class __$$SortOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SortOrdersImpl>
    implements _$$SortOrdersImplCopyWith<$Res> {
  __$$SortOrdersImplCopyWithImpl(
      _$SortOrdersImpl _value, $Res Function(_$SortOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSort = null,
  }) {
    return _then(_$SortOrdersImpl(
      null == orderSort
          ? _value.orderSort
          : orderSort // ignore: cast_nullable_to_non_nullable
              as OrderSortEnum,
    ));
  }
}

/// @nodoc

class _$SortOrdersImpl implements _SortOrders {
  const _$SortOrdersImpl(this.orderSort);

  @override
  final OrderSortEnum orderSort;

  @override
  String toString() {
    return 'OrdersEvent.sortOrders(orderSort: $orderSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortOrdersImpl &&
            (identical(other.orderSort, orderSort) ||
                other.orderSort == orderSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderSort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortOrdersImplCopyWith<_$SortOrdersImpl> get copyWith =>
      __$$SortOrdersImplCopyWithImpl<_$SortOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) getOrderData,
    required TResult Function(OrderSortEnum orderSort) sortOrders,
  }) {
    return sortOrders(orderSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? getOrderData,
    TResult? Function(OrderSortEnum orderSort)? sortOrders,
  }) {
    return sortOrders?.call(orderSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? getOrderData,
    TResult Function(OrderSortEnum orderSort)? sortOrders,
    required TResult orElse(),
  }) {
    if (sortOrders != null) {
      return sortOrders(orderSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_GetOrderData value) getOrderData,
    required TResult Function(_SortOrders value) sortOrders,
  }) {
    return sortOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_GetOrderData value)? getOrderData,
    TResult? Function(_SortOrders value)? sortOrders,
  }) {
    return sortOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_GetOrderData value)? getOrderData,
    TResult Function(_SortOrders value)? sortOrders,
    required TResult orElse(),
  }) {
    if (sortOrders != null) {
      return sortOrders(this);
    }
    return orElse();
  }
}

abstract class _SortOrders implements OrdersEvent {
  const factory _SortOrders(final OrderSortEnum orderSort) = _$SortOrdersImpl;

  OrderSortEnum get orderSort;
  @JsonKey(ignore: true)
  _$$SortOrdersImplCopyWith<_$SortOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$OrdersStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrdersStateImpl implements _OrdersState {
  const _$OrdersStateImpl({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'OrdersState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState({final int count}) = _$OrdersStateImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
