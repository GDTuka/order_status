// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvents {
  String get authId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventsCopyWith<UserEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventsCopyWith<$Res> {
  factory $UserEventsCopyWith(
          UserEvents value, $Res Function(UserEvents) then) =
      _$UserEventsCopyWithImpl<$Res, UserEvents>;
  @useResult
  $Res call({String authId});
}

/// @nodoc
class _$UserEventsCopyWithImpl<$Res, $Val extends UserEvents>
    implements $UserEventsCopyWith<$Res> {
  _$UserEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authId = null,
  }) {
    return _then(_value.copyWith(
      authId: null == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $UserEventsCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String authId});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authId = null,
  }) {
    return _then(_$LoginImpl(
      null == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.authId);

  @override
  final String authId;

  @override
  String toString() {
    return 'UserEvents.login(authId: $authId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.authId, authId) || other.authId == authId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
  }) {
    return login(authId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
  }) {
    return login?.call(authId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements UserEvents {
  const factory _Login(final String authId) = _$LoginImpl;

  @override
  String get authId;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserRemoteModel? get user => throw _privateConstructorUsedError;
  bool get isAuthLoading => throw _privateConstructorUsedError;
  String? get authError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({UserRemoteModel? user, bool isAuthLoading, String? authError});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAuthLoading = null,
    Object? authError = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRemoteModel?,
      isAuthLoading: null == isAuthLoading
          ? _value.isAuthLoading
          : isAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: freezed == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRemoteModel? user, bool isAuthLoading, String? authError});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAuthLoading = null,
    Object? authError = freezed,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRemoteModel?,
      isAuthLoading: null == isAuthLoading
          ? _value.isAuthLoading
          : isAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: freezed == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.user = null, this.isAuthLoading = false, this.authError = null});

  @override
  @JsonKey()
  final UserRemoteModel? user;
  @override
  @JsonKey()
  final bool isAuthLoading;
  @override
  @JsonKey()
  final String? authError;

  @override
  String toString() {
    return 'UserState(user: $user, isAuthLoading: $isAuthLoading, authError: $authError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAuthLoading, isAuthLoading) ||
                other.isAuthLoading == isAuthLoading) &&
            (identical(other.authError, authError) ||
                other.authError == authError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isAuthLoading, authError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final UserRemoteModel? user,
      final bool isAuthLoading,
      final String? authError}) = _$UserStateImpl;

  @override
  UserRemoteModel? get user;
  @override
  bool get isAuthLoading;
  @override
  String? get authError;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
