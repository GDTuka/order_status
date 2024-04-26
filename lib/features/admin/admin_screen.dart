import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/features/admin/widgets/user_form.dart';
import 'package:order_status/features/admin/widgets/user_widget.dart';

// ignore: must_be_immutable
class AdminScreen extends StatelessWidget {
  AdminScreen({super.key});

  Future<void> _deleteUser(BuildContext context, UserRemoteModel user, int index) async {
    final res = await showDialog<bool?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            'Вы действительно хотите удалить пользователя? ${user.name},${user.surname},${user.thirdName}',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'Нет',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Да'),
            )
          ],
        );
      },
    );
    if (res == true) {
      getIt<UserBloc>().add(UserEvents.deleteUser(index));
    }
  }

  Timer? _debounce;

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      getIt<UserBloc>().add(const UserEvents.searchByUser());
    });
  }

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
                        child: TextFormField(
                          decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
                          controller: getIt<UserBloc>().searchController,
                          onChanged: _onSearchChanged,
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 20)),
                      const SliverToBoxAdapter(child: UserForm()),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      SliverList.separated(
                        itemCount: state.isSearchingNow ? state.sortedUserList.length : state.users.length,
                        itemBuilder: (context, index) {
                          return UserWidget(
                            userRemoteModel: state.isSearchingNow ? state.sortedUserList[index] : state.users[index],
                            deleteUser: () => _deleteUser(context, state.users[index], index),
                            editUser: () => getIt<UserBloc>().add(UserEvents.openEditUserForm(index)),
                            copyUserAuthId: () => getIt<UserBloc>().add(UserEvents.copyUserAuthId(index)),
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
