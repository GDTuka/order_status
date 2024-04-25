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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventsCopyWith<$Res> {
  factory $UserEventsCopyWith(
          UserEvents value, $Res Function(UserEvents) then) =
      _$UserEventsCopyWithImpl<$Res, UserEvents>;
}

/// @nodoc
class _$UserEventsCopyWithImpl<$Res, $Val extends UserEvents>
    implements $UserEventsCopyWith<$Res> {
  _$UserEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
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
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) {
    return login(authId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) {
    return login?.call(authId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
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
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
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

  String get authId;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewUserAdminImplCopyWith<$Res> {
  factory _$$SetNewUserAdminImplCopyWith(_$SetNewUserAdminImpl value,
          $Res Function(_$SetNewUserAdminImpl) then) =
      __$$SetNewUserAdminImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool val});
}

/// @nodoc
class __$$SetNewUserAdminImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$SetNewUserAdminImpl>
    implements _$$SetNewUserAdminImplCopyWith<$Res> {
  __$$SetNewUserAdminImplCopyWithImpl(
      _$SetNewUserAdminImpl _value, $Res Function(_$SetNewUserAdminImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
  }) {
    return _then(_$SetNewUserAdminImpl(
      null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetNewUserAdminImpl implements _SetNewUserAdmin {
  const _$SetNewUserAdminImpl(this.val);

  @override
  final bool val;

  @override
  String toString() {
    return 'UserEvents.setNewUserAdmin(val: $val)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewUserAdminImpl &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewUserAdminImplCopyWith<_$SetNewUserAdminImpl> get copyWith =>
      __$$SetNewUserAdminImplCopyWithImpl<_$SetNewUserAdminImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) {
    return setNewUserAdmin(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) {
    return setNewUserAdmin?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (setNewUserAdmin != null) {
      return setNewUserAdmin(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) {
    return setNewUserAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) {
    return setNewUserAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (setNewUserAdmin != null) {
      return setNewUserAdmin(this);
    }
    return orElse();
  }
}

abstract class _SetNewUserAdmin implements UserEvents {
  const factory _SetNewUserAdmin(final bool val) = _$SetNewUserAdminImpl;

  bool get val;
  @JsonKey(ignore: true)
  _$$SetNewUserAdminImplCopyWith<_$SetNewUserAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewUserImplCopyWith<$Res> {
  factory _$$CreateNewUserImplCopyWith(
          _$CreateNewUserImpl value, $Res Function(_$CreateNewUserImpl) then) =
      __$$CreateNewUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateNewUserImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$CreateNewUserImpl>
    implements _$$CreateNewUserImplCopyWith<$Res> {
  __$$CreateNewUserImplCopyWithImpl(
      _$CreateNewUserImpl _value, $Res Function(_$CreateNewUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateNewUserImpl implements _CreateNewUser {
  const _$CreateNewUserImpl();

  @override
  String toString() {
    return 'UserEvents.createNewUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateNewUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) {
    return createNewUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) {
    return createNewUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) {
    return createNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) {
    return createNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser(this);
    }
    return orElse();
  }
}

abstract class _CreateNewUser implements UserEvents {
  const factory _CreateNewUser() = _$CreateNewUserImpl;
}

/// @nodoc
abstract class _$$ToggleNewUserFormImplCopyWith<$Res> {
  factory _$$ToggleNewUserFormImplCopyWith(_$ToggleNewUserFormImpl value,
          $Res Function(_$ToggleNewUserFormImpl) then) =
      __$$ToggleNewUserFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleNewUserFormImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$ToggleNewUserFormImpl>
    implements _$$ToggleNewUserFormImplCopyWith<$Res> {
  __$$ToggleNewUserFormImplCopyWithImpl(_$ToggleNewUserFormImpl _value,
      $Res Function(_$ToggleNewUserFormImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleNewUserFormImpl implements _ToggleNewUserForm {
  const _$ToggleNewUserFormImpl();

  @override
  String toString() {
    return 'UserEvents.toggleNewUserForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleNewUserFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) {
    return toggleNewUserForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) {
    return toggleNewUserForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (toggleNewUserForm != null) {
      return toggleNewUserForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) {
    return toggleNewUserForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) {
    return toggleNewUserForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (toggleNewUserForm != null) {
      return toggleNewUserForm(this);
    }
    return orElse();
  }
}

abstract class _ToggleNewUserForm implements UserEvents {
  const factory _ToggleNewUserForm() = _$ToggleNewUserFormImpl;
}

/// @nodoc
abstract class _$$SetUserAfterBaseLoginImplCopyWith<$Res> {
  factory _$$SetUserAfterBaseLoginImplCopyWith(
          _$SetUserAfterBaseLoginImpl value,
          $Res Function(_$SetUserAfterBaseLoginImpl) then) =
      __$$SetUserAfterBaseLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRemoteModel user});
}

/// @nodoc
class __$$SetUserAfterBaseLoginImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$SetUserAfterBaseLoginImpl>
    implements _$$SetUserAfterBaseLoginImplCopyWith<$Res> {
  __$$SetUserAfterBaseLoginImplCopyWithImpl(_$SetUserAfterBaseLoginImpl _value,
      $Res Function(_$SetUserAfterBaseLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SetUserAfterBaseLoginImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRemoteModel,
    ));
  }
}

/// @nodoc

class _$SetUserAfterBaseLoginImpl implements _SetUserAfterBaseLogin {
  const _$SetUserAfterBaseLoginImpl(this.user);

  @override
  final UserRemoteModel user;

  @override
  String toString() {
    return 'UserEvents.setUserAfterBaseLogin(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserAfterBaseLoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserAfterBaseLoginImplCopyWith<_$SetUserAfterBaseLoginImpl>
      get copyWith => __$$SetUserAfterBaseLoginImplCopyWithImpl<
          _$SetUserAfterBaseLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
  }) {
    return setUserAfterBaseLogin(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
  }) {
    return setUserAfterBaseLogin?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (setUserAfterBaseLogin != null) {
      return setUserAfterBaseLogin(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SetNewUserAdmin value) setNewUserAdmin,
    required TResult Function(_CreateNewUser value) createNewUser,
    required TResult Function(_ToggleNewUserForm value) toggleNewUserForm,
    required TResult Function(_SetUserAfterBaseLogin value)
        setUserAfterBaseLogin,
  }) {
    return setUserAfterBaseLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
  }) {
    return setUserAfterBaseLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    required TResult orElse(),
  }) {
    if (setUserAfterBaseLogin != null) {
      return setUserAfterBaseLogin(this);
    }
    return orElse();
  }
}

abstract class _SetUserAfterBaseLogin implements UserEvents {
  const factory _SetUserAfterBaseLogin(final UserRemoteModel user) =
      _$SetUserAfterBaseLoginImpl;

  UserRemoteModel get user;
  @JsonKey(ignore: true)
  _$$SetUserAfterBaseLoginImplCopyWith<_$SetUserAfterBaseLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
// Текущей юзер
  UserRemoteModel? get user =>
      throw _privateConstructorUsedError; // Инфа о том грузится ли админ страница
  bool get isAdminPageLoading =>
      throw _privateConstructorUsedError; // Инфа о том грузится ли страница авторизации
  bool get isAuthLoading =>
      throw _privateConstructorUsedError; // Текст ошибки авторизации
  String? get authError =>
      throw _privateConstructorUsedError; // Текст ошибки добавления новго юзера
  String? get addNewUserError =>
      throw _privateConstructorUsedError; // Инфа о том является ли новый юзер админом
  bool get newUserIsAdmin =>
      throw _privateConstructorUsedError; // Инфа о том активна ли сейчас форма добавления новго пользователя
  bool get showAddNewUserForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {UserRemoteModel? user,
      bool isAdminPageLoading,
      bool isAuthLoading,
      String? authError,
      String? addNewUserError,
      bool newUserIsAdmin,
      bool showAddNewUserForm});
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
    Object? isAdminPageLoading = null,
    Object? isAuthLoading = null,
    Object? authError = freezed,
    Object? addNewUserError = freezed,
    Object? newUserIsAdmin = null,
    Object? showAddNewUserForm = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRemoteModel?,
      isAdminPageLoading: null == isAdminPageLoading
          ? _value.isAdminPageLoading
          : isAdminPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthLoading: null == isAuthLoading
          ? _value.isAuthLoading
          : isAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: freezed == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String?,
      addNewUserError: freezed == addNewUserError
          ? _value.addNewUserError
          : addNewUserError // ignore: cast_nullable_to_non_nullable
              as String?,
      newUserIsAdmin: null == newUserIsAdmin
          ? _value.newUserIsAdmin
          : newUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddNewUserForm: null == showAddNewUserForm
          ? _value.showAddNewUserForm
          : showAddNewUserForm // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {UserRemoteModel? user,
      bool isAdminPageLoading,
      bool isAuthLoading,
      String? authError,
      String? addNewUserError,
      bool newUserIsAdmin,
      bool showAddNewUserForm});
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
    Object? isAdminPageLoading = null,
    Object? isAuthLoading = null,
    Object? authError = freezed,
    Object? addNewUserError = freezed,
    Object? newUserIsAdmin = null,
    Object? showAddNewUserForm = null,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRemoteModel?,
      isAdminPageLoading: null == isAdminPageLoading
          ? _value.isAdminPageLoading
          : isAdminPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthLoading: null == isAuthLoading
          ? _value.isAuthLoading
          : isAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: freezed == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String?,
      addNewUserError: freezed == addNewUserError
          ? _value.addNewUserError
          : addNewUserError // ignore: cast_nullable_to_non_nullable
              as String?,
      newUserIsAdmin: null == newUserIsAdmin
          ? _value.newUserIsAdmin
          : newUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddNewUserForm: null == showAddNewUserForm
          ? _value.showAddNewUserForm
          : showAddNewUserForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.user = null,
      this.isAdminPageLoading = false,
      this.isAuthLoading = false,
      this.authError = null,
      this.addNewUserError = null,
      this.newUserIsAdmin = false,
      this.showAddNewUserForm = false});

// Текущей юзер
  @override
  @JsonKey()
  final UserRemoteModel? user;
// Инфа о том грузится ли админ страница
  @override
  @JsonKey()
  final bool isAdminPageLoading;
// Инфа о том грузится ли страница авторизации
  @override
  @JsonKey()
  final bool isAuthLoading;
// Текст ошибки авторизации
  @override
  @JsonKey()
  final String? authError;
// Текст ошибки добавления новго юзера
  @override
  @JsonKey()
  final String? addNewUserError;
// Инфа о том является ли новый юзер админом
  @override
  @JsonKey()
  final bool newUserIsAdmin;
// Инфа о том активна ли сейчас форма добавления новго пользователя
  @override
  @JsonKey()
  final bool showAddNewUserForm;

  @override
  String toString() {
    return 'UserState(user: $user, isAdminPageLoading: $isAdminPageLoading, isAuthLoading: $isAuthLoading, authError: $authError, addNewUserError: $addNewUserError, newUserIsAdmin: $newUserIsAdmin, showAddNewUserForm: $showAddNewUserForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAdminPageLoading, isAdminPageLoading) ||
                other.isAdminPageLoading == isAdminPageLoading) &&
            (identical(other.isAuthLoading, isAuthLoading) ||
                other.isAuthLoading == isAuthLoading) &&
            (identical(other.authError, authError) ||
                other.authError == authError) &&
            (identical(other.addNewUserError, addNewUserError) ||
                other.addNewUserError == addNewUserError) &&
            (identical(other.newUserIsAdmin, newUserIsAdmin) ||
                other.newUserIsAdmin == newUserIsAdmin) &&
            (identical(other.showAddNewUserForm, showAddNewUserForm) ||
                other.showAddNewUserForm == showAddNewUserForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      isAdminPageLoading,
      isAuthLoading,
      authError,
      addNewUserError,
      newUserIsAdmin,
      showAddNewUserForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final UserRemoteModel? user,
      final bool isAdminPageLoading,
      final bool isAuthLoading,
      final String? authError,
      final String? addNewUserError,
      final bool newUserIsAdmin,
      final bool showAddNewUserForm}) = _$UserStateImpl;

  @override // Текущей юзер
  UserRemoteModel? get user;
  @override // Инфа о том грузится ли админ страница
  bool get isAdminPageLoading;
  @override // Инфа о том грузится ли страница авторизации
  bool get isAuthLoading;
  @override // Текст ошибки авторизации
  String? get authError;
  @override // Текст ошибки добавления новго юзера
  String? get addNewUserError;
  @override // Инфа о том является ли новый юзер админом
  bool get newUserIsAdmin;
  @override // Инфа о том активна ли сейчас форма добавления новго пользователя
  bool get showAddNewUserForm;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
