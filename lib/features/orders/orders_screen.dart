import 'package:flutter/material.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({
    super.key,
  });

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final List<OrderWidget> order = [
    OrderWidget(
        order: OrderLocalModel(
      code: "SUCCESS",
      transactionId: 0,
      qrId: "AD9C2D8340F84EF59112A0BF30B3710E",
      sbpMerchantId: "MA622976",
      merchantId: 3003157001,
      amount: 100,
      currency: "RUB",
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
    )),
    OrderWidget(
        order: OrderLocalModel(
      code: "SUCCESS",
      transactionId: 0,
      qrId: "AD9C2D8340F84EF59112A0BF30B3710E",
      sbpMerchantId: "MA622976",
      merchantId: 3003157001,
      amount: 100,
      currency: "RUB",
      paymentStatus: "SUCCES",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2024-04-26T15:18:11.566125+03:00"),
    )),
    OrderWidget(
        order: OrderLocalModel(
      code: "SUCCESS",
      transactionId: 0,
      qrId: "AD9C2D8340F84EF59112A0BF30B3710E",
      sbpMerchantId: "MA622976",
      merchantId: 3003157001,
      amount: 100,
      currency: "RUB",
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2022-04-26T15:18:11.566125+03:00"),
    ))
  ];

  String _sortOrder = 'По убыванию';
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    order.sort(
      (a, b) => (b.order.createDate).compareTo(
        a.order.createDate,
      ),
    );
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
                    setState(() {
                      _sortOrder = value!;
                      _sortOrder == 'По убыванию'
                          ? order.sort((a, b) => (b.order.createDate)
                              .compareTo(a.order.createDate))
                          : order.sort((a, b) => (a.order.createDate)
                              .compareTo(b.order.createDate));
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
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return order[index];
                          },
                          childCount: order.length,
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
                            return order[index];
                          },
                          childCount: order.length,
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
  }
}
