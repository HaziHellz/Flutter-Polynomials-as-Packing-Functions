import 'package:flutter/material.dart';

class DP extends StatefulWidget {
  const DP({super.key});

  @override
  State<DP> createState() => _GTPState();
}

class _GTPState extends State<DP> {
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
            'Bienvenido a Diagonal Polynomial',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ));
  }
}
