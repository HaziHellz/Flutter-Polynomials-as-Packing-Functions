import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const Color onTitlesCream = Color.fromRGBO(246, 224, 211, 1);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 15, color: onTitlesCream),
          ),
          child: const Text(
            'Bienvenido a los polinomios como funciones de empaquetamiento',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ));
  }
}
