// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  }

  TextEditingController adminNewUserNameController = TextEditingController();

  TextEditingController adminNewUserSurnameController = TextEditingController();

  TextEditingController adminNewUserThirdNameController = TextEditingController();

  AuthRepository authRepository;

  UserRepository userRepository;

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

    try {
      final user = await authRepository.login(authId);

      emit(
        state.copyWith(
          user: user,
          authError: user == null ? 'Неверный код авторизации' : null,
        ),
      );
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

      // Получать res и добавлять его в список пользователей который будет отображаться
      userRepository.createNewUser(
        UserRemoteModel(
            authId: uuid.v1(),
            isAdmin: isNewAdmin,
            isSuperAdmin: false,
            name: name,
            surname: surname,
            thirdName: thirdName),
      );

      adminNewUserNameController.clear();
      adminNewUserSurnameController.clear();
      adminNewUserThirdNameController.clear();

      emit(
        state.copyWith(
          newUserIsAdmin: false,
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
