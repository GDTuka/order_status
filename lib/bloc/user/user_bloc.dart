// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_bloc.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_event.dart';
import 'package:order_status/data/models/local/enums/user_sort_enum.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/domain/user/user_repository.dart';
import 'package:uuid/uuid.dart';

part 'user_events.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvents, UserState> {
  UserBloc({
    required this.authRepository,
    required this.userRepository,
  }) : super(const UserState()) {
    on<_Login>(_login);
    on<_CreateNewUser>(_createNewUser);
    on<_SetNewUserAdmin>(_setNewUserAdmin);
    on<_ToggleNewUserForm>(_toggleNewUserForm);
    on<_SetUserAfterBaseLogin>(_setUserAfterBaseLogin);
    on<_GetUsers>(_loadUsers);
    on<_DeleteUser>(_deleteUser);
    on<_EditUser>(_editUser);
    on<_CopyUserAuthId>(_copyUserAuthId);
    on<_OpenEditUserForm>(_openEditUserForm);
    on<_SearchByUser>(_searchByUser);
    on<_ChangeTryAdminAuth>(_changeAdminAuth);
  }

  TextEditingController adminNewUserNameController = TextEditingController();

  TextEditingController adminNewUserSurnameController = TextEditingController();

  TextEditingController adminNewUserThirdNameController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  AuthRepository authRepository;

  UserRepository userRepository;

  int selectedForEditingUser = 0;

  Future<void> _loadUsers(_GetUsers event, Emitter<UserState> emit) async {
    final sort = state.sort;

    try {
      final users = await userRepository.getUsers(sort);
      emit(state.copyWith(users: users));
    } on Exception {
      emit(state.copyWith(userLoadingError: 'При загрузке пользователей произошла ошибка'));
    }
  }

  Future<void> _login(_Login event, Emitter<UserState> emit) async {
    final authId = event.authId;
    final adminId = event.adminId;
    final isAdmin = event.isAdmin;
    try {
      final user = await authRepository.login(
        authId,
        adminId,
        isAdmin,
      );

      emit(
        state.copyWith(
          user: user,
          authError: user == null ? 'Неверный код авторизации' : null,
        ),
      );
      if (user != null) {
        // ignore: use_build_context_synchronously
         Navigator.of(event.context).pushReplacementNamed( Platform.isAndroid ? '/navigation' : '/navigation_windows') ;
      }
    } on Exception {
      emit(
        state.copyWith(
          authError: 'При авторизации произошла ошибка, пожалуйста попробуйте позже',
        ),
      );
    }
  }

  Future<void> _setUserAfterBaseLogin(_SetUserAfterBaseLogin event, Emitter<UserState> emit) async {
    emit(state.copyWith(
      user: event.user,
    ));
  }

  Future<void> _setNewUserAdmin(_SetNewUserAdmin event, Emitter<UserState> emit) async {
    emit(
      state.copyWith(
        newUserIsAdmin: event.val,
      ),
    );
  }

  Future<void> _searchByUser(_SearchByUser event, Emitter<UserState> emit) async {
    final term = searchController.text.toLowerCase().replaceAll(' ', '');
    final newUserList = List<UserRemoteModel>.from(state.users)
        .where((e) => '${e.name?.toLowerCase()}${e.surname?.toLowerCase()}${e.thirdName?.toLowerCase()}'.contains(term))
        .toList();

    emit(
      state.copyWith(
        sortedUserList: newUserList,
        isSearchingNow: term.isNotEmpty,
      ),
    );
  }

  Future<void> _deleteUser(_DeleteUser event, Emitter<UserState> emit) async {
    final user = state.users[event.userIndex];

    try {
      await userRepository.deleteUser(user.authId);

      emit(
        state.copyWith(
          users: List<UserRemoteModel>.from(state.users)..removeAt(event.userIndex),
        ),
      );
    } on Exception {
      getIt<OverlayBloc>().add(ShowNotificationEvent(content: const Text('Ошибка при редактировании пользователя')));
    }
  }

  Future<void> _editUser(_EditUser event, Emitter<UserState> emit) async {
    final user = state.users[selectedForEditingUser];

    user.name = adminNewUserNameController.text;

    user.surname = adminNewUserSurnameController.text;

    user.thirdName = adminNewUserThirdNameController.text;

    user.isAdmin = state.newUserIsAdmin;

    try {
      await userRepository.updateUser(user);

      final newUserList = <UserRemoteModel>[...state.users];

      newUserList[selectedForEditingUser] = user;

      emit(
        state.copyWith(
          users: newUserList,
          newUserIsAdmin: false,
          isUserEditing: false,
          showAddNewUserForm: false,
        ),
      );
    } on Exception {
      getIt<OverlayBloc>().add(ShowNotificationEvent(content: const Text('Ошибка при редактировании пользователя')));
    }
  }

  Future<void> _openEditUserForm(_OpenEditUserForm event, Emitter<UserState> emit) async {
    final user = state.users[event.userIndex];

    adminNewUserNameController.text = user.name ?? "";

    adminNewUserSurnameController.text = user.surname ?? "";

    adminNewUserThirdNameController.text = user.thirdName ?? "";

    selectedForEditingUser = event.userIndex;

    emit(state.copyWith(
      newUserIsAdmin: user.isAdmin,
      isUserEditing: true,
      showAddNewUserForm: true,
    ));
  }

  Future<void> _copyUserAuthId(_CopyUserAuthId event, Emitter<UserState> emit) async {
    final user = state.users[event.userIndex];

    Clipboard.setData(ClipboardData(text: user.authId));
  }

  Future<void> _changeAdminAuth(_ChangeTryAdminAuth event, Emitter<UserState> emit) async {
    emit(state.copyWith(
      tryAdminAuth: event.val,
    ));
  }

  Future<void> _toggleNewUserForm(_ToggleNewUserForm event, Emitter<UserState> emit) async {
    emit(state.copyWith(showAddNewUserForm: !state.showAddNewUserForm));
  }

  Future<void> _createNewUser(_CreateNewUser event, Emitter<UserState> emit) async {
    final name = adminNewUserNameController.text;

    final surname = adminNewUserSurnameController.text;

    final thirdName = adminNewUserThirdNameController.text;

    final isNewAdmin = state.newUserIsAdmin;

    try {
      Uuid uuid = const Uuid();

      final newUser = UserRemoteModel(
        authId: uuid.v1(),
        isAdmin: isNewAdmin,
        isSuperAdmin: false,
        name: name,
        surname: surname,
        thirdName: thirdName,
        adminAuthId: isNewAdmin ? uuid.v1() : null,
      );
      // Получать res и добавлять его в список пользователей который будет отображаться
      userRepository.createNewUser(newUser);

      final users = <UserRemoteModel>[newUser, ...state.users];

      adminNewUserNameController.clear();
      adminNewUserSurnameController.clear();
      adminNewUserThirdNameController.clear();

      emit(
        state.copyWith(
          newUserIsAdmin: false,
          users: users,
          showAddNewUserForm: false,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          authError: 'При создании пользователя произошла ошибка, пожалуйста попробуйте позже',
        ),
      );
    }
  }
}
