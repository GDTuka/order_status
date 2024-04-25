part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    //TODO() remove when real data
    @Default(0) int count,
  }) = _UserState;
}
