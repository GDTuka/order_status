import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/orders/orders_bloc.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: OrdersScreen(
        orders: [],
      ),
    ),
  );
}

class Order {
  final int id;
  final bool isPaid;
  final DateTime? date;

  Order({
    required this.id,
    required this.isPaid,
    this.date,
  });
}

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key, required this.orders});
  final List<Order> orders;

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final List<Order> _trackedOrders = [
    Order(id: 1, isPaid: true),
    Order(id: 2, isPaid: false),
    Order(id: 3, isPaid: true),
  ];
  final List<Order> _orderHistory = [
    Order(id: 1, isPaid: true, date: DateTime(2023, 4, 25)),
    Order(id: 2, isPaid: false, date: DateTime(2024, 4, 20)),
    Order(id: 3, isPaid: true, date: DateTime(2023, 4, 15)),
  ];

  String _sortOrder = 'По убыванию';
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _orderHistory.sort(
      (a, b) => (b.date ?? DateTime.now()).compareTo(
        a.date ?? DateTime.now(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<OrdersBloc, OrdersState>(
    //   bloc: getIt(),
    //   builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'История заказов',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: _currentTabIndex == 1
            ? [
                DropdownButton<String>(
                  value: _sortOrder,
                  items: <String>['По убыванию', 'По возрастанию']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _sortOrder = value!;
                      _sortOrder == 'По убыванию'
                          ? _orderHistory.sort((a, b) =>
                              (b.date ?? DateTime.now())
                                  .compareTo(a.date ?? DateTime.now()))
                          : _orderHistory.sort((a, b) =>
                              (a.date ?? DateTime.now())
                                  .compareTo(b.date ?? DateTime.now()));
                    });
                  },
                ),
              ]
            : null,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  _currentTabIndex = index;
                });
              },
              tabs: const [
                Tab(text: 'Отслеживаемые'),
                Tab(text: 'История поиска'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      SliverToBoxAdapter(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _trackedOrders.length,
                          itemBuilder: (context, index) {
                            return OrderWidget(
                              order: _trackedOrders[index],
                            );
                          },
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return OrderWidget(order: _orderHistory[index]);
                          },
                          childCount: _orderHistory.length,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //   },
    //   listener: (BuildContext context, OrdersState state) {},
    // );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:order_status/app/app.dart';
// import 'package:order_status/bloc/orders/orders_bloc.dart';
// import 'package:order_status/features/orders/widgets/order_widget.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: OrdersScreen(
//         orders: [],
//       ),
//     ),
//   );
// }

// class Order {
//   final int id;
//   final bool isPaid;
//   final DateTime? date;

//   Order({
//     required this.id,
//     required this.isPaid,
//     this.date,
//   });
// }

// class OrdersScreen extends StatefulWidget {
//   const OrdersScreen({super.key, required this.orders});
//   final List<Order> orders;

//   @override
//   State<OrdersScreen> createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> {
//   final List<Order> _trackedOrders = [
//     Order(id: 1, isPaid: true),
//     Order(id: 2, isPaid: false),
//     Order(id: 3, isPaid: true),
//   ];
//   final List<Order> _orderHistory = [
//     Order(id: 1, isPaid: true, date: DateTime(2023, 4, 25)),
//     Order(id: 2, isPaid: false, date: DateTime(2024, 4, 20)),
//     Order(id: 3, isPaid: true, date: DateTime(2023, 4, 15)),
//   ];
//   @override
//   void initState() {
//     super.initState();
//     // Сортируем заказы по дате в порядке убывания
//     _orderHistory.sort((a, b) =>
//         (b.date ?? DateTime.now()).compareTo(a.date ?? DateTime.now()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<OrdersBloc, OrdersState>(
//       bloc: getIt(),
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               'История заказов',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//               ),
//             ),
//           ),
//           body: DefaultTabController(
//             length: 3,
//             child: Column(
//               children: [
//                 const TabBar(
//                   tabs: [
//                     Tab(text: 'Отслеживаемые'),
//                     Tab(text: 'История поиска'),
//                   ],
//                 ),
//                 Expanded(
//                   child: TabBarView(
//                     children: [
//                       _buildOrdersList(_trackedOrders),
//                       _buildOrdersList(_orderHistory),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       listener: (BuildContext context, OrdersState state) {},
//     );
//   }

//   Widget _buildOrdersList(List<Order> orders) {
//     return ListView.builder(
//       itemCount: orders.length,
//       itemBuilder: (context, index) {
//         return OrderWidget(
//           order: orders[index], orderRemoteModel: state,
//         );
//       },
//     );
//   }
// }



//111111111111111111111111111111111111


// class OrdersScreene extends StatelessWidget {
//   const OrdersScreene({required this.orders, super.key});

//   final List<Order> orders;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'История заказов',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 40,
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: orders.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(orders[index].title),
//             subtitle: Text(orders[index].isPaid ? 'Оплачен' : 'Не оплачен'),
//           );
//         },
//       ),
//     );
//   }
// }
