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
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
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
  $Res call({String authId, BuildContext context});
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
    Object? context = null,
  }) {
    return _then(_$LoginImpl(
      null == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.authId, this.context);

  @override
  final String authId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvents.login(authId: $authId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return login(authId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return login?.call(authId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authId, context);
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
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
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
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
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements UserEvents {
  const factory _Login(final String authId, final BuildContext context) =
      _$LoginImpl;

  String get authId;
  BuildContext get context;
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
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return setNewUserAdmin(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return setNewUserAdmin?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
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
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
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
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
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
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return createNewUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return createNewUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
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
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
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
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
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
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return toggleNewUserForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return toggleNewUserForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
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
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
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
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
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
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return setUserAfterBaseLogin(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return setUserAfterBaseLogin?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
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
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
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
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
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
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl();

  @override
  String toString() {
    return 'UserEvents.getUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserEvents {
  const factory _GetUsers() = _$GetUsersImpl;
}

/// @nodoc
abstract class _$$SetUserSortImplCopyWith<$Res> {
  factory _$$SetUserSortImplCopyWith(
          _$SetUserSortImpl value, $Res Function(_$SetUserSortImpl) then) =
      __$$SetUserSortImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetUserSortImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$SetUserSortImpl>
    implements _$$SetUserSortImplCopyWith<$Res> {
  __$$SetUserSortImplCopyWithImpl(
      _$SetUserSortImpl _value, $Res Function(_$SetUserSortImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetUserSortImpl implements _SetUserSort {
  const _$SetUserSortImpl();

  @override
  String toString() {
    return 'UserEvents.setUserSort()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetUserSortImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return setUserSort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return setUserSort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (setUserSort != null) {
      return setUserSort();
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return setUserSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return setUserSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (setUserSort != null) {
      return setUserSort(this);
    }
    return orElse();
  }
}

abstract class _SetUserSort implements UserEvents {
  const factory _SetUserSort() = _$SetUserSortImpl;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userIndex});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIndex = null,
  }) {
    return _then(_$DeleteUserImpl(
      null == userIndex
          ? _value.userIndex
          : userIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements _DeleteUser {
  const _$DeleteUserImpl(this.userIndex);

  @override
  final int userIndex;

  @override
  String toString() {
    return 'UserEvents.deleteUser(userIndex: $userIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.userIndex, userIndex) ||
                other.userIndex == userIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return deleteUser(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return deleteUser?.call(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userIndex);
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteUser implements UserEvents {
  const factory _DeleteUser(final int userIndex) = _$DeleteUserImpl;

  int get userIndex;
  @JsonKey(ignore: true)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditUserImplCopyWith<$Res> {
  factory _$$EditUserImplCopyWith(
          _$EditUserImpl value, $Res Function(_$EditUserImpl) then) =
      __$$EditUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditUserImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$EditUserImpl>
    implements _$$EditUserImplCopyWith<$Res> {
  __$$EditUserImplCopyWithImpl(
      _$EditUserImpl _value, $Res Function(_$EditUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditUserImpl implements _EditUser {
  const _$EditUserImpl();

  @override
  String toString() {
    return 'UserEvents.editUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return editUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return editUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser();
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class _EditUser implements UserEvents {
  const factory _EditUser() = _$EditUserImpl;
}

/// @nodoc
abstract class _$$CopyUserAuthIdImplCopyWith<$Res> {
  factory _$$CopyUserAuthIdImplCopyWith(_$CopyUserAuthIdImpl value,
          $Res Function(_$CopyUserAuthIdImpl) then) =
      __$$CopyUserAuthIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userIndex});
}

/// @nodoc
class __$$CopyUserAuthIdImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$CopyUserAuthIdImpl>
    implements _$$CopyUserAuthIdImplCopyWith<$Res> {
  __$$CopyUserAuthIdImplCopyWithImpl(
      _$CopyUserAuthIdImpl _value, $Res Function(_$CopyUserAuthIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIndex = null,
  }) {
    return _then(_$CopyUserAuthIdImpl(
      null == userIndex
          ? _value.userIndex
          : userIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CopyUserAuthIdImpl implements _CopyUserAuthId {
  const _$CopyUserAuthIdImpl(this.userIndex);

  @override
  final int userIndex;

  @override
  String toString() {
    return 'UserEvents.copyUserAuthId(userIndex: $userIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyUserAuthIdImpl &&
            (identical(other.userIndex, userIndex) ||
                other.userIndex == userIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyUserAuthIdImplCopyWith<_$CopyUserAuthIdImpl> get copyWith =>
      __$$CopyUserAuthIdImplCopyWithImpl<_$CopyUserAuthIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return copyUserAuthId(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return copyUserAuthId?.call(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (copyUserAuthId != null) {
      return copyUserAuthId(userIndex);
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return copyUserAuthId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return copyUserAuthId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (copyUserAuthId != null) {
      return copyUserAuthId(this);
    }
    return orElse();
  }
}

abstract class _CopyUserAuthId implements UserEvents {
  const factory _CopyUserAuthId(final int userIndex) = _$CopyUserAuthIdImpl;

  int get userIndex;
  @JsonKey(ignore: true)
  _$$CopyUserAuthIdImplCopyWith<_$CopyUserAuthIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenEditUserFormImplCopyWith<$Res> {
  factory _$$OpenEditUserFormImplCopyWith(_$OpenEditUserFormImpl value,
          $Res Function(_$OpenEditUserFormImpl) then) =
      __$$OpenEditUserFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userIndex});
}

/// @nodoc
class __$$OpenEditUserFormImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$OpenEditUserFormImpl>
    implements _$$OpenEditUserFormImplCopyWith<$Res> {
  __$$OpenEditUserFormImplCopyWithImpl(_$OpenEditUserFormImpl _value,
      $Res Function(_$OpenEditUserFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIndex = null,
  }) {
    return _then(_$OpenEditUserFormImpl(
      null == userIndex
          ? _value.userIndex
          : userIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OpenEditUserFormImpl implements _OpenEditUserForm {
  const _$OpenEditUserFormImpl(this.userIndex);

  @override
  final int userIndex;

  @override
  String toString() {
    return 'UserEvents.openEditUserForm(userIndex: $userIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenEditUserFormImpl &&
            (identical(other.userIndex, userIndex) ||
                other.userIndex == userIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenEditUserFormImplCopyWith<_$OpenEditUserFormImpl> get copyWith =>
      __$$OpenEditUserFormImplCopyWithImpl<_$OpenEditUserFormImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return openEditUserForm(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return openEditUserForm?.call(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (openEditUserForm != null) {
      return openEditUserForm(userIndex);
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return openEditUserForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return openEditUserForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (openEditUserForm != null) {
      return openEditUserForm(this);
    }
    return orElse();
  }
}

abstract class _OpenEditUserForm implements UserEvents {
  const factory _OpenEditUserForm(final int userIndex) = _$OpenEditUserFormImpl;

  int get userIndex;
  @JsonKey(ignore: true)
  _$$OpenEditUserFormImplCopyWith<_$OpenEditUserFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchByUserImplCopyWith<$Res> {
  factory _$$SearchByUserImplCopyWith(
          _$SearchByUserImpl value, $Res Function(_$SearchByUserImpl) then) =
      __$$SearchByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchByUserImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$SearchByUserImpl>
    implements _$$SearchByUserImplCopyWith<$Res> {
  __$$SearchByUserImplCopyWithImpl(
      _$SearchByUserImpl _value, $Res Function(_$SearchByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchByUserImpl implements _SearchByUser {
  const _$SearchByUserImpl();

  @override
  String toString() {
    return 'UserEvents.searchByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authId, BuildContext context) login,
    required TResult Function(bool val) setNewUserAdmin,
    required TResult Function() createNewUser,
    required TResult Function() toggleNewUserForm,
    required TResult Function(UserRemoteModel user) setUserAfterBaseLogin,
    required TResult Function() getUsers,
    required TResult Function() setUserSort,
    required TResult Function(int userIndex) deleteUser,
    required TResult Function() editUser,
    required TResult Function(int userIndex) copyUserAuthId,
    required TResult Function(int userIndex) openEditUserForm,
    required TResult Function() searchByUser,
  }) {
    return searchByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authId, BuildContext context)? login,
    TResult? Function(bool val)? setNewUserAdmin,
    TResult? Function()? createNewUser,
    TResult? Function()? toggleNewUserForm,
    TResult? Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult? Function()? getUsers,
    TResult? Function()? setUserSort,
    TResult? Function(int userIndex)? deleteUser,
    TResult? Function()? editUser,
    TResult? Function(int userIndex)? copyUserAuthId,
    TResult? Function(int userIndex)? openEditUserForm,
    TResult? Function()? searchByUser,
  }) {
    return searchByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authId, BuildContext context)? login,
    TResult Function(bool val)? setNewUserAdmin,
    TResult Function()? createNewUser,
    TResult Function()? toggleNewUserForm,
    TResult Function(UserRemoteModel user)? setUserAfterBaseLogin,
    TResult Function()? getUsers,
    TResult Function()? setUserSort,
    TResult Function(int userIndex)? deleteUser,
    TResult Function()? editUser,
    TResult Function(int userIndex)? copyUserAuthId,
    TResult Function(int userIndex)? openEditUserForm,
    TResult Function()? searchByUser,
    required TResult orElse(),
  }) {
    if (searchByUser != null) {
      return searchByUser();
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SetUserSort value) setUserSort,
    required TResult Function(_DeleteUser value) deleteUser,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_CopyUserAuthId value) copyUserAuthId,
    required TResult Function(_OpenEditUserForm value) openEditUserForm,
    required TResult Function(_SearchByUser value) searchByUser,
  }) {
    return searchByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult? Function(_CreateNewUser value)? createNewUser,
    TResult? Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult? Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SetUserSort value)? setUserSort,
    TResult? Function(_DeleteUser value)? deleteUser,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult? Function(_OpenEditUserForm value)? openEditUserForm,
    TResult? Function(_SearchByUser value)? searchByUser,
  }) {
    return searchByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SetNewUserAdmin value)? setNewUserAdmin,
    TResult Function(_CreateNewUser value)? createNewUser,
    TResult Function(_ToggleNewUserForm value)? toggleNewUserForm,
    TResult Function(_SetUserAfterBaseLogin value)? setUserAfterBaseLogin,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SetUserSort value)? setUserSort,
    TResult Function(_DeleteUser value)? deleteUser,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_CopyUserAuthId value)? copyUserAuthId,
    TResult Function(_OpenEditUserForm value)? openEditUserForm,
    TResult Function(_SearchByUser value)? searchByUser,
    required TResult orElse(),
  }) {
    if (searchByUser != null) {
      return searchByUser(this);
    }
    return orElse();
  }
}

abstract class _SearchByUser implements UserEvents {
  const factory _SearchByUser() = _$SearchByUserImpl;
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
      throw _privateConstructorUsedError; // Текст ошибки загрузки пользователей
  String? get userLoadingError =>
      throw _privateConstructorUsedError; // Инфа о том является ли новый юзер админом
  bool get newUserIsAdmin =>
      throw _privateConstructorUsedError; // Инфа о том активна ли сейчас форма добавления новго пользователя
  bool get showAddNewUserForm =>
      throw _privateConstructorUsedError; // Редактируется ли сейчас пользователь
  bool get isUserEditing =>
      throw _privateConstructorUsedError; // Сортировка по отображаемым юзерам
  UserSortEnum get sort =>
      throw _privateConstructorUsedError; // Список пользователей
  List<UserRemoteModel> get users =>
      throw _privateConstructorUsedError; // Список отсортированных пользователей по тексту который вбил пользователь в текстовое поле
  List<UserRemoteModel> get sortedUserList =>
      throw _privateConstructorUsedError; // Чтобы отслеживать ищет ли пользователь сейчас
  bool get isSearchingNow => throw _privateConstructorUsedError;

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
      String? userLoadingError,
      bool newUserIsAdmin,
      bool showAddNewUserForm,
      bool isUserEditing,
      UserSortEnum sort,
      List<UserRemoteModel> users,
      List<UserRemoteModel> sortedUserList,
      bool isSearchingNow});
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
    Object? userLoadingError = freezed,
    Object? newUserIsAdmin = null,
    Object? showAddNewUserForm = null,
    Object? isUserEditing = null,
    Object? sort = null,
    Object? users = null,
    Object? sortedUserList = null,
    Object? isSearchingNow = null,
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
      userLoadingError: freezed == userLoadingError
          ? _value.userLoadingError
          : userLoadingError // ignore: cast_nullable_to_non_nullable
              as String?,
      newUserIsAdmin: null == newUserIsAdmin
          ? _value.newUserIsAdmin
          : newUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddNewUserForm: null == showAddNewUserForm
          ? _value.showAddNewUserForm
          : showAddNewUserForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserEditing: null == isUserEditing
          ? _value.isUserEditing
          : isUserEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as UserSortEnum,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRemoteModel>,
      sortedUserList: null == sortedUserList
          ? _value.sortedUserList
          : sortedUserList // ignore: cast_nullable_to_non_nullable
              as List<UserRemoteModel>,
      isSearchingNow: null == isSearchingNow
          ? _value.isSearchingNow
          : isSearchingNow // ignore: cast_nullable_to_non_nullable
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
      String? userLoadingError,
      bool newUserIsAdmin,
      bool showAddNewUserForm,
      bool isUserEditing,
      UserSortEnum sort,
      List<UserRemoteModel> users,
      List<UserRemoteModel> sortedUserList,
      bool isSearchingNow});
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
    Object? userLoadingError = freezed,
    Object? newUserIsAdmin = null,
    Object? showAddNewUserForm = null,
    Object? isUserEditing = null,
    Object? sort = null,
    Object? users = null,
    Object? sortedUserList = null,
    Object? isSearchingNow = null,
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
      userLoadingError: freezed == userLoadingError
          ? _value.userLoadingError
          : userLoadingError // ignore: cast_nullable_to_non_nullable
              as String?,
      newUserIsAdmin: null == newUserIsAdmin
          ? _value.newUserIsAdmin
          : newUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddNewUserForm: null == showAddNewUserForm
          ? _value.showAddNewUserForm
          : showAddNewUserForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserEditing: null == isUserEditing
          ? _value.isUserEditing
          : isUserEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as UserSortEnum,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRemoteModel>,
      sortedUserList: null == sortedUserList
          ? _value._sortedUserList
          : sortedUserList // ignore: cast_nullable_to_non_nullable
              as List<UserRemoteModel>,
      isSearchingNow: null == isSearchingNow
          ? _value.isSearchingNow
          : isSearchingNow // ignore: cast_nullable_to_non_nullable
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
      this.userLoadingError = null,
      this.newUserIsAdmin = false,
      this.showAddNewUserForm = false,
      this.isUserEditing = false,
      this.sort = UserSortEnum.all,
      final List<UserRemoteModel> users = const <UserRemoteModel>[],
      final List<UserRemoteModel> sortedUserList = const <UserRemoteModel>[],
      this.isSearchingNow = false})
      : _users = users,
        _sortedUserList = sortedUserList;

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
// Текст ошибки загрузки пользователей
  @override
  @JsonKey()
  final String? userLoadingError;
// Инфа о том является ли новый юзер админом
  @override
  @JsonKey()
  final bool newUserIsAdmin;
// Инфа о том активна ли сейчас форма добавления новго пользователя
  @override
  @JsonKey()
  final bool showAddNewUserForm;
// Редактируется ли сейчас пользователь
  @override
  @JsonKey()
  final bool isUserEditing;
// Сортировка по отображаемым юзерам
  @override
  @JsonKey()
  final UserSortEnum sort;
// Список пользователей
  final List<UserRemoteModel> _users;
// Список пользователей
  @override
  @JsonKey()
  List<UserRemoteModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

// Список отсортированных пользователей по тексту который вбил пользователь в текстовое поле
  final List<UserRemoteModel> _sortedUserList;
// Список отсортированных пользователей по тексту который вбил пользователь в текстовое поле
  @override
  @JsonKey()
  List<UserRemoteModel> get sortedUserList {
    if (_sortedUserList is EqualUnmodifiableListView) return _sortedUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortedUserList);
  }

// Чтобы отслеживать ищет ли пользователь сейчас
  @override
  @JsonKey()
  final bool isSearchingNow;

  @override
  String toString() {
    return 'UserState(user: $user, isAdminPageLoading: $isAdminPageLoading, isAuthLoading: $isAuthLoading, authError: $authError, addNewUserError: $addNewUserError, userLoadingError: $userLoadingError, newUserIsAdmin: $newUserIsAdmin, showAddNewUserForm: $showAddNewUserForm, isUserEditing: $isUserEditing, sort: $sort, users: $users, sortedUserList: $sortedUserList, isSearchingNow: $isSearchingNow)';
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
            (identical(other.userLoadingError, userLoadingError) ||
                other.userLoadingError == userLoadingError) &&
            (identical(other.newUserIsAdmin, newUserIsAdmin) ||
                other.newUserIsAdmin == newUserIsAdmin) &&
            (identical(other.showAddNewUserForm, showAddNewUserForm) ||
                other.showAddNewUserForm == showAddNewUserForm) &&
            (identical(other.isUserEditing, isUserEditing) ||
                other.isUserEditing == isUserEditing) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._sortedUserList, _sortedUserList) &&
            (identical(other.isSearchingNow, isSearchingNow) ||
                other.isSearchingNow == isSearchingNow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      isAdminPageLoading,
      isAuthLoading,
      authError,
      addNewUserError,
      userLoadingError,
      newUserIsAdmin,
      showAddNewUserForm,
      isUserEditing,
      sort,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_sortedUserList),
      isSearchingNow);

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
      final String? userLoadingError,
      final bool newUserIsAdmin,
      final bool showAddNewUserForm,
      final bool isUserEditing,
      final UserSortEnum sort,
      final List<UserRemoteModel> users,
      final List<UserRemoteModel> sortedUserList,
      final bool isSearchingNow}) = _$UserStateImpl;

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
  @override // Текст ошибки загрузки пользователей
  String? get userLoadingError;
  @override // Инфа о том является ли новый юзер админом
  bool get newUserIsAdmin;
  @override // Инфа о том активна ли сейчас форма добавления новго пользователя
  bool get showAddNewUserForm;
  @override // Редактируется ли сейчас пользователь
  bool get isUserEditing;
  @override // Сортировка по отображаемым юзерам
  UserSortEnum get sort;
  @override // Список пользователей
  List<UserRemoteModel> get users;
  @override // Список отсортированных пользователей по тексту который вбил пользователь в текстовое поле
  List<UserRemoteModel> get sortedUserList;
  @override // Чтобы отслеживать ищет ли пользователь сейчас
  bool get isSearchingNow;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
