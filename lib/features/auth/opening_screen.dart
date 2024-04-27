import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
         Navigator.of(context).pushReplacementNamed('/auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 339,
              child: Text(
                "Добро пожаловать!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(1, 1),
                        blurRadius: 62)
                  ],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 165,
              height: 165,
              child: CircularProgressIndicator(
                  color: Color(0xffFFE500), strokeWidth: 3),
            ),
            SizedBox(
              width: 230,
              child: Text(
                "Приложение для проверки статуса оплаты заказов",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
