part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    // Текущей юзер
    @Default(null) UserRemoteModel? user,
    // Инфа о том грузится ли админ страница
    @Default(false) bool isAdminPageLoading,
    // Инфа о том грузится ли страница авторизации
    @Default(false) bool isAuthLoading,
    // Текст ошибки авторизации
    @Default(null) String? authError,
    // Текст ошибки добавления новго юзера
    @Default(null) String? addNewUserError,
    // Текст ошибки загрузки пользователей
    @Default(null) String? userLoadingError,
    // Инфа о том является ли новый юзер админом
    @Default(false) bool newUserIsAdmin,
    // Инфа о том активна ли сейчас форма добавления новго пользователя
    @Default(false) bool showAddNewUserForm,
    // Редактируется ли сейчас пользователь
    @Default(false) bool isUserEditing,
    // Сортировка по отображаемым юзерам
    @Default(UserSortEnum.all) UserSortEnum sort,
    // Список пользователей
    @Default(<UserRemoteModel>[]) List<UserRemoteModel> users,
    // Список отсортированных пользователей по тексту который вбил пользователь в текстовое поле
    @Default(<UserRemoteModel>[]) List<UserRemoteModel> sortedUserList,
    // Чтобы отслеживать ищет ли пользователь сейчас
    @Default(false) bool isSearchingNow,
    // Чтобы войти как админ
    @Default(false) bool tryAdminAuth,
  }) = _UserState;
}
