import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      bloc: getIt(),
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: getIt<UserBloc>().adminNewUserNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Имя',
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: getIt<UserBloc>().adminNewUserSurnameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Фамилия',
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: getIt<UserBloc>().adminNewUserThirdNameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Отчество',
                  ),
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 16),
                if (state.user!.isSuperAdmin)
                  Row(
                    children: [
                      Checkbox(
                        value: state.newUserIsAdmin,
                        onChanged: (value) {
                          getIt<UserBloc>().add(UserEvents.setNewUserAdmin(value ?? false));
                        },
                      ),
                      const SizedBox(width: 5),
                      const Flexible(
                        child: Text(
                          'Сделать пользователя Администратором',
                        ),
                      )
                    ],
                  ),
                const SizedBox(height: 20),
                DefaultAppButton(
                  onTap: () => getIt<UserBloc>().add(const UserEvents.createNewUser()),
                  content: const Text(
                    'Создать пользователя',
                  ),
                )
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
