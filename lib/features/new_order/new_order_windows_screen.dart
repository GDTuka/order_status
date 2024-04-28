import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/domain/order_status/order_repository.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';
import 'package:order_status/features/orders/widgets/order_windows_widget.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class NewOrderWindowsScreen extends StatefulWidget {
  const NewOrderWindowsScreen({super.key});

  @override
  State<NewOrderWindowsScreen> createState() => _NewOrderWindowsScreenState();
}

class _NewOrderWindowsScreenState extends State<NewOrderWindowsScreen> {
  bool value = false;

  String? errorText;

  bool isLoading = false;

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

final OrderLocalModel orders = OrderLocalModel(
    paymentStatus: "SUCCESS",
    order: "fcf1cd80-62bd-1f94-80fb-292677056444",
    createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
  );
  final List<OrderWindowsWidget> order = [
    OrderWindowsWidget(
        order: OrderLocalModel(
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2023-04-26T15:18:11.566125+03:00"),
    )),
    OrderWindowsWidget(
        order: OrderLocalModel(
      paymentStatus: "SUCCES",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2024-04-26T15:18:11.566125+03:00"),
    )),
    OrderWindowsWidget(
        order: OrderLocalModel(
      paymentStatus: "SUCCESS",
      order: "fcf1cd80-62bd-1f94-80fb-292677056444",
      createDate: DateTime.parse("2022-04-26T15:18:11.566125+03:00"),
    ))
  ];



  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size * 0.5;
    return Scaffold(
        body: Column(
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
                    const Text(
                      'Поиск заказа',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 38,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(0, 22),
                                blurRadius: 46)
                          ]),
                    ),
                    SizedBox(
                      width: mediaQuerySize.width * 0.95,
                      child: TextFormField(
                        controller: controller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Введите номер заказа'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DefaultAppButton(
                      width: mediaQuerySize.width * 0.95,
                      onTap: getStatus,
                      content: const Text('Получить информацию о заказе'),
                    ),
                    const SizedBox(height: 20),
                    
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
                    width: mediaQuerySize.width * 0.63,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: mediaQuerySize.height * 0.1,
                      decoration: BoxDecoration(
                        color: const Color(0xff6860A8),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          'Номер заказа',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    width: mediaQuerySize.width * 0.1,
                  ),
                  SizedBox(
                      child: Container(
                    width: mediaQuerySize.width * 0.22,
                    height: mediaQuerySize.height * 0.1,
                    decoration: BoxDecoration(
                      color: const Color(0xff6860A8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Статус',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
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
              if (orderModel != null)
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: OrderWindowsWidget(
                          order: orderModel!,
                        ),
                      ),
              SizedBox(
                width: mediaQuerySize.width,
                height: mediaQuerySize.height,
                child: ListView.builder(
                  itemCount: order.length,
                  itemBuilder: (context, index) {
                    return order[index];
                  },
                ),
              ),
            ],
                  )),
          ],
        ));
  }
}
