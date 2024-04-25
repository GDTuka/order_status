part of 'user_bloc.dart';

@freezed
class UserEvents with _$UserEvents {
  // Логинит пользователя
  const factory UserEvents.login(String authId) = _Login;

  // Сетает нового пользователя в форме как админа
  const factory UserEvents.setNewUserAdmin(bool val) = _SetNewUserAdmin;

  // Создаёт нового пользователя
  const factory UserEvents.createNewUser() = _CreateNewUser;

  // Открывает или закрывает форму создания нового пользователя
  const factory UserEvents.toggleNewUserForm() = _ToggleNewUserForm;

  // Сетает нового пользователя стейт после базовой авторизации
  // Базовая авторизация это кода пользователь авторизуется по локальному authId
  const factory UserEvents.setUserAfterBaseLogin(UserRemoteModel user) = _SetUserAfterBaseLogin;
}
