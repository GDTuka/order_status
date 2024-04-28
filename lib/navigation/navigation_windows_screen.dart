import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_bloc.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_state.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/features/admin/admin_screen.dart';
import 'package:order_status/features/admin/admin_windows_screen.dart';
import 'package:order_status/features/new_order/new_order_screen.dart';
import 'package:order_status/features/new_order/new_order_windows_screen.dart';
import 'package:order_status/features/orders/orders_screen.dart';
import 'package:order_status/features/orders/orders_windows_screen.dart';
import 'package:order_status/widgets/overlay/notification_widget.dart';

class NavigationWindowsScreen extends StatefulWidget {
  const NavigationWindowsScreen({super.key});

  @override
  State<NavigationWindowsScreen> createState() =>
      _NavigationWindowsScreenState();
}

class _NavigationWindowsScreenState extends State<NavigationWindowsScreen> {
  int _activeIndex = 0;

  late final OverlayState overlayState;

  List<Widget> screens = [
    const NewOrderWindowsScreen(),
    const OrdersWindowsScreen(),
    const AdmingWindowsScreen()
  ];

  @override
  void initState() {
    getIt<UserBloc>().add(const UserEvents.getUsers());

    overlayState = Overlay.of(context);

    getIt<OverlayBloc>()
        .stream
        .listen((event) => _overlayListener(context, event));

    super.initState();
  }

  Future<void> _overlayListener(
      BuildContext context, OverlayBlocState state) async {
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
        BottomNavigationBarItem(
            icon: Icon(Icons.search), label: 'Новые заказы'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Все заказы'),
        BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings), label: 'Админка'),
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
    final Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
        body: DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            width: mediaQuerySize.width * 0.6,
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 4))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.logo_dev),
                Align(
                  child: TabBar(
                    onTap: _setActiveIndex,
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    labelColor: Theme.of(context).colorScheme.onSecondary,
                    tabs: const [
                      Tab(icon: Icon(Icons.search)),
                      Tab(icon: Icon(Icons.history)),
                      Tab(icon: Icon(Icons.admin_panel_settings)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: TabBarView(children: screens),
          ),
        ],
      ),
    ));
  }
}
