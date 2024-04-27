import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_status/data/models/remote/order/order_remote_model.dart';

import 'package:order_status/features/orders/orders_screen.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  // final OrderRemoteModel orderRemoteModel;

  const OrderWidget({
    super.key,
    required this.order,
    // required this.orderRemoteModel,
  });

  String formatDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd.MM.yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                formatDate(
                  order.date,
                ).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Card(
            color: order.isPaid ? Colors.green : Colors.red,
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: order.isPaid
                            ? const Color.fromARGB(255, 196, 255, 226)
                            : const Color.fromARGB(255, 255, 194, 189),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Статус:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: order.isPaid ? Colors.green : Colors.red,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            order.isPaid ? 'Оплачен' : 'Не оплачен',
                            style: TextStyle(
                              color: order.isPaid ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: order.isPaid
                            ? const Color.fromARGB(255, 196, 255, 226)
                            : const Color.fromARGB(255, 255, 194, 189),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Номер заказа:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: order.isPaid ? Colors.green : Colors.red,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '1234',
                              style: TextStyle(
                                color: order.isPaid ? Colors.green : Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
