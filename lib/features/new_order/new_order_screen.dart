import 'package:flutter/material.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
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
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Введите номер заказа'),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: orderCard(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container orderCard(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFF56AD40)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFE7F2E4),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Cтатус: Оплачен'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFE7F2E4),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Номер заказа: №1232311933914912323119339149912747338'),
                ),
              ),
            ),
            Row(
              children: [
                const Text(
                  'Отслеживать:',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                Checkbox(
                  focusColor: Colors.black,
                  value: value,
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
