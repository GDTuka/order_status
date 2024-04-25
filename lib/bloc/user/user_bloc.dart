import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/domain/auth/auth_repository.dart';

part 'user_events.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvents, UserState> {
  UserBloc({
    required this.authRepository,
  }) : super(const UserState()) {
    on<_Login>(_login);
  }

  AuthRepository authRepository;

  // ignore: library_private_types_in_public_api
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
      emit(state.copyWith(authError: 'При авторизации произошла ошибка, пожалуйста попробуйте позже'));
    }
  }
}
