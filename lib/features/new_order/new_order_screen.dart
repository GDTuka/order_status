import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/domain/order_status/order_repository.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';
import 'package:order_status/widgets/button/default_app_button.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
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

      final res = await getIt<OrderRepository>().getOrderStatusById(controller.text);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
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
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    TextFormField(
                      controller: controller,
                      decoration:
                          const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Введите номер заказа'),
                    ),
                    DefaultAppButton(
                      onTap: getStatus,
                      content: const Text('Получить информацию о заказе'),
                    ),
                    const SizedBox(height: 20),
                    if (orderModel != null)
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: OrderWidget(
                          order: orderModel!,
                        ),
                      )
                  ],
                ),
              ),
            ),
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
          ],
        ));
  }
}
