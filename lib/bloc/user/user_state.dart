part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(null) UserRemoteModel? user,
    @Default(false) bool isAuthLoading,
    @Default(null) String? authError,
  }) = _UserState;
}
