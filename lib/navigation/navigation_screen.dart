import 'dart:async';

import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_bloc.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_state.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/features/admin/admin_screen.dart';
import 'package:order_status/features/new_order/new_order_screen.dart';
import 'package:order_status/features/orders/orders_screen.dart';
import 'package:order_status/widgets/overlay/notification_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _activeIndex = 0;

  late final OverlayState overlayState;

  List<Widget> screens = [
    const NewOrderScreen(),
    const OrdersScreen(),
    AdminScreen(),
  ];

  @override
  void initState() {
    getIt<UserBloc>().add(const UserEvents.getUsers());

    overlayState = Overlay.of(context);

    getIt<OverlayBloc>().stream.listen((event) => _overlayListener(context, event));

    super.initState();
  }

  Future<void> _overlayListener(BuildContext context, OverlayBlocState state) async {
    if (state is ShowNotificationState) {
      final entry = OverlayEntry(
        builder: (context) {
          return OverlayNotification(
            notificationWidget: state.content,
            animationCompleteCallback: () {},
            duration: const Duration(seconds: 3),
          );
        },
      );
      overlayState.insert(entry);

      await Future<void>.delayed(const Duration(seconds: 3));

      entry.remove();
    }
  }

  //TODO() Добавить проверку на то админ ли пользователь
  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      onTap: _setActiveIndex,
      currentIndex: _activeIndex,
      items: const [
        //TODO() Добавить нормальные иконки
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Новые заказы'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Все заказы'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_rounded), label: 'Админка'),
      ],
    );
  }

  void _setActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_activeIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}
