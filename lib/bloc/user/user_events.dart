part of 'user_bloc.dart';

@freezed
class UserEvents with _$UserEvents {
  // Логинит пользователя
  const factory UserEvents.login(String authId, BuildContext context) = _Login;

  // Сетает нового пользователя в форме как админа
  const factory UserEvents.setNewUserAdmin(bool val) = _SetNewUserAdmin;

  // Создаёт нового пользователя
  const factory UserEvents.createNewUser() = _CreateNewUser;

  // Открывает или закрывает форму создания нового пользователя
  const factory UserEvents.toggleNewUserForm() = _ToggleNewUserForm;

  // Сетает нового пользователя стейт после базовой авторизации
  // Базовая авторизация это кода пользователь авторизуется по локальному authId
  const factory UserEvents.setUserAfterBaseLogin(UserRemoteModel user) = _SetUserAfterBaseLogin;

  // Получение списка пользователей
  const factory UserEvents.getUsers() = _GetUsers;

  // Устанавливает сортировку пользователей либо админы либо пользователи либо все. Изначально установлено все
  const factory UserEvents.setUserSort() = _SetUserSort;

  // Удаляет пользователя
  const factory UserEvents.deleteUser(int userIndex) = _DeleteUser;

  // Редактирует пользователя
  const factory UserEvents.editUser() = _EditUser;

  // Копирует authId пользователя в буфер обмена
  const factory UserEvents.copyUserAuthId(int userIndex) = _CopyUserAuthId;

  // Открывает форму редактирования пользователя
  const factory UserEvents.openEditUserForm(int userIndex) = _OpenEditUserForm;

  const factory UserEvents.searchByUser() = _SearchByUser;
}
