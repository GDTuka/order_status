import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/domain/order_status/order_repository.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({
    super.key,
  });

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isLoading = false;

  List<OrderLocalModel> orders = [];

  final String _sortOrder = 'По убыванию';

  int _currentTabIndex = 0;

  Future<void> getOrders() async {
    setState(() {
      isLoading = true;
    });

    final savedOrders = await getIt<OrderRepository>().getSavedOrders();

    setState(() {
      orders = savedOrders;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    getOrders();
  }

  @override
  Widget build(BuildContext context) {
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
                    // setState(() {
                    //   _sortOrder = value!;
                    //   _sortOrder == 'По убыванию'
                    //       ? order.sort((a, b) => (b.order.createDate).compareTo(a.order.createDate))
                    //       : order.sort((a, b) => (a.order.createDate).compareTo(b.order.createDate));
                    // });
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
                  if (isLoading)
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                  else
                    const CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: SizedBox(height: 20),
                        ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //     (context, index) {
                        //       return order[index];
                        //     },
                        //     childCount: order.length,
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: SizedBox(height: 20),
                        ),
                      ],
                    ),
                  const CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      // SliverList(
                      //   delegate: SliverChildBuilderDelegate(
                      //     (context, index) {
                      //       return order[index];
                      //     },
                      //     childCount: order.length,
                      //   ),
                      // ),
                      SliverToBoxAdapter(
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
  }
}
