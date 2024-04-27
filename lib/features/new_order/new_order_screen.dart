import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/bloc/search_orders/search_bloc.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/features/orders/widgets/order_widget.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Text(
                'Поиск заказа',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
              ),
              TextFormField(
                controller: controller,
                onChanged: (value) {
                  context.read<SearchBloc>().add(SearchOrderEvent(value));
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Введите номер заказа'),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OrderWidget(
                    order: OrderLocalModel(
                  paymentStatus: "SUCCESS",
                  order: "fcf1cd80-62bd-1f94-80fb-292677056444",
                  createDate:
                      DateTime.parse("2024-04-26T15:18:11.566125+03:00"),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
