import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/domain/order_status/order_repository.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';
import 'package:order_status/features/orders/widgets/order_windows_widget.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class OrdersWindowsScreen extends StatefulWidget {
  const OrdersWindowsScreen({
    super.key,
  });

  @override
  State<OrdersWindowsScreen> createState() => _OrdersWindowsScreenState();
}

class _OrdersWindowsScreenState extends State<OrdersWindowsScreen> {
  bool isLoading = false;
  bool value = false;

  String? errorText;

  OrderLocalModel? orderModel;

  TextEditingController controller = TextEditingController();

  Future<void> getStatus() async {
    try {
      setState(() {
        isLoading = true;
      });

      final res =
          await getIt<OrderRepository>().getOrderStatusById(controller.text);

      setState(() {
        orderModel = res;
      });

      errorText = null;
    } on Exception catch (e) {
      errorText = (e as FormatException).message;
    }
    setState(() {
      isLoading = false;
    });
  }

  List<OrderLocalModel> orders = [
    OrderLocalModel(
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
    ),
    OrderLocalModel(
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
    ),
    OrderLocalModel(
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
    ),
  ];

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

    // getOrders();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'История заказов',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 38, shadows: [
            Shadow(color: Colors.black, offset: Offset(0, 4), blurRadius: 20)
          ]),
        ),
        actions: _currentTabIndex == 0
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
                      // _sortOrder = value!;
                      _sortOrder == 'По убыванию'
                          ? orders.sort(
                              (a, b) => (b.createDate).compareTo(a.createDate))
                          : orders.sort(
                              (a, b) => (a.createDate).compareTo(b.createDate));
                    });
                  },
                ),
              ]
            : null,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(children: [
          TabBar(
            onTap: (index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
            tabs: const [
              Tab(text: 'История поиска'),
              Tab(text: 'Отслеживаемые'),
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
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              if (errorText != null) ...[
                                Text(
                                  errorText!,
                                  style: const TextStyle(color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                              SizedBox(
                                width: mediaQuerySize.width * 0.5,
                                child: TextFormField(
                                  controller: controller,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.search),
                                      hintText: 'Введите номер заказа'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: mediaQuerySize.width * 0.3,
                                  child: Container(
                                    width: mediaQuerySize.width * 0.05,
                                    height: mediaQuerySize.height * 0.06,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff6860A8),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Номер заказа',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                mediaQuerySize.width * 0.022),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: mediaQuerySize.width * 0.05,
                                ),
                                SizedBox(
                                    child: Container(
                                  width: mediaQuerySize.width * 0.15,
                                  height: mediaQuerySize.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff6860A8),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Статус',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              mediaQuerySize.width * 0.022),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: mediaQuerySize.height * 0.01,
                            ),
                            if (isLoading)
                              const Center(
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return OrderWindowsWidget(order: orders[index]);
                        },
                        childCount: orders.length,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(height: 20),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
