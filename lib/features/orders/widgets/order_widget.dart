import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';

class OrderWidget extends StatelessWidget {
  final OrderLocalModel order;

  const OrderWidget({
    super.key,
    required this.order,
  });

  String formatDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd.MM.yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    bool paymentStatus = order.paymentStatus == "SUCCESS";
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                formatDate(
                  order.createDate,
                ).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Card(
            color: paymentStatus ? Colors.green : Colors.red,
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      color: paymentStatus
                          ? const Color.fromARGB(255, 196, 255, 226)
                          : const Color.fromARGB(255, 255, 194, 189),
                      borderRadius: BorderRadius.circular(8),
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
                            color: paymentStatus ? Colors.green : Colors.red,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          order.paymentStatus, //? 'Оплачен' : 'Не оплачен',
                          style: TextStyle(
                            color: paymentStatus ? Colors.green : Colors.red,
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
                      color: paymentStatus
                          ? const Color.fromARGB(255, 196, 255, 226)
                          : const Color.fromARGB(255, 255, 194, 189),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Номер заказа:',
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: paymentStatus ? Colors.green : Colors.red,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            order.order,
                            maxLines: 2,
                            style: TextStyle(
                              color: paymentStatus ? Colors.green : Colors.red,
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
        ],
      ),
    );
  }
}
