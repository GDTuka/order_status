part of 'user_bloc.dart';

@freezed
class UserEvents with _$UserEvents {
  const factory UserEvents.login() = _Login;
}
