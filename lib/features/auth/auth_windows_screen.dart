import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class AuthWindowsScreen extends StatelessWidget {
  AuthWindowsScreen({super.key});

  final TextEditingController _authIdController = TextEditingController();

  final TextEditingController _adminController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size * 0.5;
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
              width: mediaQuerySize.width,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Авторизуйтесь используя код авторизации',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      if (state.authError != null)
                        Text(
                          state.authError!,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: mediaQuerySize.width,
                        child: TextFormField(
                          controller: _adminController,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'Введите код администратора',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: mediaQuerySize.width,
                        child: TextFormField(
                          controller: _authIdController,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'Введите код авторизации',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: mediaQuerySize.width,
                        child: Row(
                          children: [
                            Checkbox(
                              value: state.tryAdminAuth,
                              onChanged: (val) => getIt<UserBloc>().add(
                                  UserEvents.changeTryAdminAuth(val ?? false)),
                            ),
                            const Flexible(child: Text('Войти как админ'))
                          ],
                        ),
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
