import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/features/admin/widgets/user_form.dart';
import 'package:order_status/features/admin/widgets/user_widget.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      bloc: getIt(),
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Админ панель'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(child: SizedBox(height: 20)),
                      SliverToBoxAdapter(
                        child: DefaultAppButton(
                          onTap: () => getIt<UserBloc>().add(const UserEvents.toggleNewUserForm()),
                          content: const Text('Добавить пользователя'),
                        ),
                      ),
                      if (state.showAddNewUserForm) ...[
                        const SliverToBoxAdapter(child: SizedBox(height: 10)),
                        const SliverToBoxAdapter(child: UserForm()),
                      ],
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      SliverList.separated(
                        itemCount: state.users.length,
                        itemBuilder: (context, index) {
                          return UserWidget(
                            userRemoteModel: state.users[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                      )
                    ],
                  ),
                  if (state.isAdminPageLoading) const Center(child: CircularProgressIndicator())
                ],
              ),
            ));
      },
      listener: (context, state) {},
    );
  }
}
