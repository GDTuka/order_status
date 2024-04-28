 import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';

class OrderWindowsWidget extends StatelessWidget {
  final OrderLocalModel order;

  const OrderWindowsWidget({
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
       final Size mediaQuerySize = MediaQuery.of(context).size * 0.5;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: mediaQuerySize.width * 0.03),
              child: Text(
                formatDate(
                  order.createDate,
                ).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: mediaQuerySize.width * 0.63,
              height: mediaQuerySize.height * 0.1,
              decoration: BoxDecoration(
                color: paymentStatus
                    ? const Color.fromARGB(255, 196, 255, 226)
                    : const Color.fromARGB(255, 255, 194, 189),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  order.order,
                  style: TextStyle(
                    color: paymentStatus ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
             SizedBox(
              width: mediaQuerySize.width  * 0.09,
            ),
            Container(
              width: mediaQuerySize.width * 0.22,
              height: mediaQuerySize.height * 0.1,
              decoration: BoxDecoration(
                color: paymentStatus
                    ? const Color.fromARGB(255, 196, 255, 226)
                    : const Color.fromARGB(255, 255, 194, 189),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  paymentStatus ? 'Оплачен' : 'Не оплачен',
                  style: TextStyle(
                    color: paymentStatus ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}