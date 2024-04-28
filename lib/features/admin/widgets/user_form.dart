import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class UserForm extends StatelessWidget {
  const UserForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size * 0.5;
    return BlocConsumer<UserBloc, UserState>(
      bloc: getIt(),
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (!state.showAddNewUserForm) {
              getIt<UserBloc>().add(const UserEvents.toggleNewUserForm());
            }
          },
          child: AnimatedContainer(
            curve: Curves.easeIn,
            height: state.showAddNewUserForm
                ? mediaQuerySize.height * 0.85
                : mediaQuerySize.height * 0.2,
            width: mediaQuerySize.width * 0.8,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFE7F2E4),
            ),
            child: Stack(
              children: [
                if (state.showAddNewUserForm) ...[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Text('Добавление пользователя'),
                        SizedBox(height: mediaQuerySize.height * 0.03),
                        TextFormField(
                          controller:
                              getIt<UserBloc>().adminNewUserNameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Имя',
                          ),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.03),
                        TextFormField(
                          controller:
                              getIt<UserBloc>().adminNewUserSurnameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Фамилия',
                          ),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.03),
                        TextFormField(
                          controller:
                              getIt<UserBloc>().adminNewUserThirdNameController,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Отчество',
                          ),
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.03),
                        if (state.user!.isSuperAdmin)
                          Row(
                            children: [
                              Checkbox(
                                value: state.newUserIsAdmin,
                                onChanged: (value) {
                                  getIt<UserBloc>().add(
                                      UserEvents.setNewUserAdmin(
                                          value ?? false));
                                },
                              ),
                              SizedBox(width: mediaQuerySize.width * 0.01),
                              const Flexible(
                                child: Text(
                                  'Сделать пользователя Администратором',
                                ),
                              )
                            ],
                          ),
                        SizedBox(height: mediaQuerySize.height * 0.01),
                        DefaultAppButton(
                          onTap: () async {
                            if (state.isUserEditing) {
                              getIt<UserBloc>()
                                  .add(const UserEvents.editUser());
                            } else {
                              getIt<UserBloc>()
                                  .add(const UserEvents.createNewUser());
                            }
                          },
                          content: Text(
                            state.isUserEditing
                                ? 'Сохранить'
                                : 'Создать пользователя',
                          ),
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.03),
                        GestureDetector(
                          onTap: () {
                            getIt<UserBloc>()
                                .add(const UserEvents.toggleNewUserForm());
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_upward),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ] else ...[
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('Добавить нового пользователя')),
                    ),
                  ),
                   SizedBox(height:  mediaQuerySize.height * 0.01),
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  )
                ]
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
