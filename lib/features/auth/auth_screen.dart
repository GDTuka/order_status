import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final TextEditingController _authIdController = TextEditingController();

  final TextEditingController _adminController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {},
      bloc: getIt<UserBloc>(),
      builder: (context, state) {
        // Нормально не делаю из принциа и того сколько есть времени
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DefaultAppButton(
              content: const Text('Авторизоваться'),
              onTap: () => getIt<UserBloc>().add(UserEvents.login(
                _authIdController.text,
                _adminController.text,
                state.tryAdminAuth,
                context,
              )),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.authError != null)
                        Text(
                          state.authError!,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      if (state.authError == null)
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Авторизуйтесь используя код авторизации',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _adminController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Введите код администратора',
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _authIdController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Введите код авторизации',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: state.tryAdminAuth,
                            onChanged: (val) => getIt<UserBloc>().add(
                                UserEvents.changeTryAdminAuth(val ?? false)),
                          ),
                          const Flexible(child: Text('Войти как админ'))
                        ],
                      )
                    ],
                  ),
                ),
                if (state.isAuthLoading)
                  const Center(child: CircularProgressIndicator())
              ],
            ),
          ),
        );
      },
    );
  }
}
