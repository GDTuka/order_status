import 'package:flutter/material.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';

class UserWidget extends StatelessWidget {
  const UserWidget(
      {super.key,
      required this.userRemoteModel,
      required this.deleteUser,
      required this.editUser,
      required this.copyUserAuthId});

  final UserRemoteModel userRemoteModel;

  final VoidCallback deleteUser;
  final VoidCallback editUser;
  final VoidCallback copyUserAuthId;

  @override
  Widget build(BuildContext context) {
    /// ФИО
    /// Редактировать
    /// Удалить
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Имя:${userRemoteModel.name}'),
                Text('Фамилия:${userRemoteModel.surname}'),
                Text('Отчество:${userRemoteModel.thirdName}'),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: deleteUser,
                  icon: const Icon(
                    Icons.delete,
                  ),
                ),
                IconButton(
                  onPressed: editUser,
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
                IconButton(
                  onPressed: copyUserAuthId,
                  icon: const Icon(
                    Icons.copy,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
